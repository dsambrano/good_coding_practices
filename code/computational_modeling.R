# Expected Value -----------
require(ggplot2)
library(latex2exp)

setwd(dirname(rstudioapi::getSourceEditorContext()$path))
create_plot_dir = function(path=file.path('plots')){
    if (! file.exists(path)){
        dir.create(path)
    }
    return(path)
}
plot_dir = create_plot_dir()
## Experimental Data ======
# Below we are creating a dataframe of the lotteries described in the Table
## The first letter represents the lottery: either A or B
## Second you have the number which represents the first (1) or second (2) option in that lottery
## This is the the winning amount (W) or the probablity for winning that amount (P)
exp_data = data.frame(A1W=rep(2, 10),
                      A1P=seq(.1,1,.1),
                      A2W=rep(1.60,10),
                      A2P=seq(.9,0,-.1),
                      B1W=rep(3.85, 10),
                      B1P=seq(.1,1,.1),
                      B2W=rep(.1,10),
                      B2P=seq(.9,0,-.1)
)

n_trials = nrow(exp_data)

## Making Our first model: Expected Value =====
ev = function(w, p){
    # Below is just a complicated way of doing this: sum(w * p) but with any number of inputs at once.
    # For your first time, you are encouraged to using the simplier method so you understand how it works. 
    # But keep in mind that it will require you to change the ev code below. 
    return(diag(as.matrix(p) %*% t(w)))
}
# Shows the difference in Expected Value between the two lotteries.
exp_data$ev_diff = ev(exp_data[,c("A1W", "A2W")], exp_data[,c("A1P", "A2P")]) - 
                    ev(exp_data[,c("B1W", "B2W")], exp_data[,c("B1P", "B2P")])

# Plotting the decision, for Expected value, you simply choose the one that is higher.
## Note that once Lottery b was better we predict that you stop choosing A.
plot = ggplot(exp_data,
              aes(1:10, (sign(ev_diff) + 1) / 2)) + 
       geom_line(linetype='dashed') + 
       ylab("P(Choosing A)") +
       scale_x_discrete(name ="Decision #", limits=factor(1:10)) + 
       theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
             panel.background = element_blank(), axis.line = element_line(colour = "black")) + 
       theme(text = element_text(size = 24)) 
plot
ggsave(file.path(plot_dir,"ev_plot.png"), plot, device="png")



# Simulate Participant data -----------
### Note the data simulated here do not necessarily reflect realistic values. 
### Instead values may be adjusted to emphasize particular things for pedagogical reasons.
sv = function(w, p, alpha){
    return(diag(as.matrix(p) %*% t(w^alpha)))
}
set.seed(3)
N = 50
alphas = rnorm(N, .3, .15); alphas = alphas - min(c(noise, -.25)) # Make alpha, ensuring its at least .25
noises = rnorm(N, 10, .5); noises = noises - min(c(noises, -.1)) # Make Noise, ensuring its at least .1
sva = matrix(NA, 10, N)
svb = matrix(NA, 10, N)
for (i in 1:N){
    sva[,i] = sv(exp_data[,c("A1W", "A2W")], exp_data[,c("A1P", "A2P")], alphas[i])
    svb[,i] = sv(exp_data[,c("B1W", "B2W")], exp_data[,c("B1P", "B2P")], alphas[i])
}
prob = function(sva, svb, noise){
    1 / (1 + exp(noise * (svb - sva)))
}
probs = prob(sva, svb, noises)
# probs
choices = ifelse(probs > runif(length(probs)), 1, 0)
# choices

plot = plot + geom_line(aes(x=1:10,y=rowMeans(choices))) + geom_point(aes(x=1:10,y=rowMeans(choices)))
plot
ggsave(file.path(plot_dir,"part_data_plot.png"), plot, device="png")

# Subjective Value Model -----------
## Now that we have seen that the data doesn't really fit our EV model, we can make adjustments to have a more accurate model.
## In practice you should either make adjustments before seeing data, or collect a new dataset to prevent you from "overfitting"
## to the data you obtained as opposed to the general structure. But that is beyond the scope of this tutorial.

# Subjective value model: 
## Just like with the EV model for your first time I recommend you implement it without the linear algebra.
sv = function(w, p, alpha){
    return(diag(as.matrix(p) %*% t(w^alpha)))
}

### Here I need to talk about what that parameter allows us to do.
### Let's shift the breakpoint.
alphas = c(.3, .5, .7, 1.3)# seq(.05,.5,.05)
n_alphas = length(alphas)
sva_alphas = matrix(NA, nrow = n_trials, ncol = n_alphas)
svb_alphas = matrix(NA, nrow = n_trials, ncol = n_alphas)
c = 1
for (i in alphas){
    sva_alphas[, c] = sv(exp_data[,c("A1W", "A2W")], exp_data[,c("A1P", "A2P")], i)
    svb_alphas[, c] = sv(exp_data[,c("B1W", "B2W")], exp_data[,c("B1P", "B2P")], i)
    c = c + 1
}
sv_diff = data.frame(diff=c(sva_alphas - svb_alphas),
                     alpha=as.factor(sort(rep(alphas, n_trials))),
                     x=rep(1:n_trials, n_alphas)
)
plot_alpha = plot + geom_line(aes(x, (sign(diff) + 1) / 2, color=alpha), data=sv_diff) +
    labs(color=TeX("$\\alpha$")) + 
    guides(color=guide_legend(override.aes=list(fill=NA)))
plot_alpha
ggsave(file.path(plot_dir,"sv_plot.png"), plot_alpha, device="png")

## Need to make a decision here. Am I going to analyze it as a group or as individuals?

# Missing Noise -----------
prob2 = function(sv_delta, gamma){
    return(1/(1 + exp(gamma*(sv_delta))))
}
gammas = c(2,4,6,8)
n_gammas = length(gammas)
selected_alpha = .5
min_sv = min(-sv_diff[sv_diff$alpha==selected_alpha,"diff"])
probs = c(); probs_test = c()
for (i in gammas){
    probs = c(probs, prob2(-sv_diff[sv_diff$alpha==selected_alpha,"diff"], i))
    #probs_test = c(probs_test, prob2(seq(min_sv,-min_sv,.01), 8))
}
sv_prob = data.frame(prob=probs,
                     gamma=as.factor(sort(rep(gammas, n_trials))),
                     x=rep(1:10, n_gammas)
)

plot = plot + geom_line(aes(x=x, y=prob, color=gamma), data=sv_prob) +
    labs(color=TeX("$\\gamma$"))
plot
ggsave(file.path(plot_dir,"sv_prob_plot.png"), plot, device="png")


#optim(par=initial_theta1,fn=cost, control = list(maxit=1000))
