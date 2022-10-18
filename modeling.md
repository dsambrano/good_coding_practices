## Why Should You Use A Computational Model
Pull from Prospectus (Utlity and generalization)

<!-- First, schematic based models do not provide specific hypotheses, making them difficult (if not impossible) to falsify.
For example, each box on the schematic often represents a plethora of variables.
In the EIC model, there is box representing the characteristics of the decision maker (e.g., preferences and personality), which influences both one’s current emotions as well as the utility calculation of the options.
Undoubtedly, the authors do not imply every characteristic impacts one’s affective state and utility calculations, but which ones are important, and which can be ignored, are not specified.
Perhaps more importantly, because the particular variables of interest are not specified, one would need to test all possible characteristics to falsify the model’s hypothesis.

The second shortcoming of schematic based models is, by design, they do not make specific hypotheses about the magnitude of effects between related components.
For example, in the EIC model one’s current emotion influences the evaluations they make, which in turn affects their choices.
But how much does one’s affect impact their evaluations and what is the nature of that relationship?
Is it linear, the more intense the emotion the larger the effect, or is it based on a threshold, where any emotion intensity after the threshold will have a similar effect and any emotion below the threshold will not impact the evaluation at all?
Schematic based models do not provide this information.
Importantly, the EIC model, was hypothesized as general purpose model and never intended to address these concerns.
Particularly because the field was still at a state where we needed to identify the affective factors involved in the decision making process (the time when schematic based models are most effective).
However, I believe the next major leap to improve our understanding of the relationship between affect and decision making will require us to address these shortcomings of schematic based models.
One solution to this problem is to use a computational model for how people make decisions.

In addition to several practical benefits (e.g., ensuring your trial space is sufficiently wide and simulations), computational models address the limitations of schematic based models.
Since a computational model specifies all the variables that are hypothesized to impact one’s choice, anyone who has the model can make predictions outside the context for which the original experiment was developed.
For example, if an experiment includes lotteries with win rate of 25%, 50%, and 75%, one could use the model to hypothesize how any person would choose if the win rate was 10%.
They need only supply the arguments for a specific lottery as well as person’s parameter estimates.
Crucially, if new experimental data stands in conflict with the a priori predictions of the model, then the model is inaccurate (or at the very least incomplete).
There is a clear falsifiable hypothesis even outside the context of the original experiment.
Additionally, since a computational model is essentially a mathematical formula, the parameters provide clear, mathematically define impacts on the outcome, and the impact can be interpreted before any experiment or parameter estimation.
By design, the model’s formula describes the magnitude for the effects, whether they be linear, exponential, etc.
Together, these features help improved the scientific discourse around emotion and decision making.
--> 


## What Even is a Computational Model

A computational Model is just a mathematical equation, serving as a hypothesis, for some psychological phenomenon. We use models all the time. Most commonly with the linear model in regression. A computational model just adds flexibility in that it is not predefined so you can adjust it to your specific situations. So you can make allow it have some non linearity or have only partial linearity. 


### My First Model
Link to paper I send to RAs

In order to give yourself a basic working example, I highly reccomend you read through this [paper](papers/Holt2002_RiskAversionIncentives_enhanced_opt.pdf).
This is a pretty foundational paper for creating models of decision making and gives a pretty good walkthrough on the process. 
For example, it describe how/why you typically want to add a noise term when modeling human decisions.
Its also quick short only about 13 pages.

Now that you have finished reading through that, we can go through <!--2--> an example<!--s--> for implementing a computational model on real data. 

### Selecting a Model

The first and most important part for computational modeling is the model that you select. 
You should definitely take some time when selecting a model because this **IS YOUR PREDICTION** for how participants will make decisions in experiment. 
Often times you will use a model that has already been used in other experiments, but occasionally, you will need to make your own (or much much more likely, you will have to adjust an existing one).
With that in mind, I will go through a really basic example for adjusting models to improve them.
This should give you a sense of how this process works, such that you can do it on your own when the time requires it. 

Our example data is going to come from people making choices between different lotteries involving money.
As such, expected value (EV) is quite literally an optimal starting point.
For the uninitiated, EV is a mathematical formula for determining the value of a risking lottery. 
So if you are acting perfectly rationally, you should choose the lottery with the highest EV. 
The formula for EV is:

$$EV = \sum{1}{i} p_i \times v_i$$

where $p$ is the probablity of winning the lottery and $v$ is the value that you get and i potential option of the lottery. So if you have a lottery that was 50:50 and if you win you get $10 and if you lose you get $0 then you could solve with:

$$ EV = .5 * 10 + .5 * 0 $$
$$ EV = 5 + 0 $$
$$ EV = 5 $$

which is to simply say that, if you played this an infinite number of times, we would expect you to, on average, earn $5.
This should make intuitive sense giving the options of the lottery.
This formula is useful because it works no matter what the probabilities or winning amount are, and it doesnt matter how many of them their are. 

### A Story of Individual Differences: Adding Parameters

One thing you might have noticed, is that the EV model expects everyone to make the same choices. 
The hypothesis is so absurd that is can be rejected outright.
Instead, it is pretty obvious that people make different choices; for example, some people really don't like it if the odds of winning are not in their favor.
In Psychology/Econoimics, we call this behavior risk aversion.
And we can add this to the model as well. 
Typically, this is done by adding a exponent to the $v$ term in EV. 
For example:

$$ SV(p, v) = \sum{1}{i} p_i \times v_i^{\alpha} $$

There are a few things I want to point out.
First I change the function from $EV$ to $SV$.
This is to signify, that this is no longer an equation for expected value, but rather, for ***subjective value***, or the value a individual places on that lottery. 
The second is that I have made it more clear that $p$ and $v$ are inputs to the model by including them in the parentheses on the left side. Finally, you can see the new term $\alpha$ which is unique to each individual.
This allows us to be able to predict that people will make choices different from one another; however, importantly, we expect everyone to make choices with this specific structure in mind. 
>**Note**: Traditionally, individual specific parameters typically use greek letters. This can help you identify what parts of the model is an input versus participant specific. 


| Option A                    | Option B                      | EV difference|
|----------------------------------------------------------------------------|
|1/10 of \$2.00, 9/10 of \$1.60 | 1/10 of \$3.85, 9/10 of \$0.10  |  $1.17 |
|2/10 of \$2.00, 8/10 of \$1.60 | 2/10 of \$3.85, 8/10 of \$0.10  |  $0.83 | 
|3/10 of \$2.00, 7/10 of \$1.60 | 3/10 of \$3.85, 7/10 of \$0.10  |  $0.50 | 
|4/10 of \$2.00, 6/10 of \$1.60 | 4/10 of \$3.85, 6/10 of \$0.10  |  $0.16 |
|5/10 of \$2.00, 5/10 of \$1.60 | 5/10 of \$3.85, 5/10 of \$0.10  | -$0.18 | 
|6/10 of \$2.00, 4/10 of \$1.60 | 6/10 of \$3.85, 4/10 of \$0.10  | -$0.51 |
|7/10 of \$2.00, 3/10 of \$1.60 | 7/10 of \$3.85, 3/10 of \$0.10  | -$0.85 | 
|8/10 of \$2.00, 2/10 of \$1.60 | 8/10 of \$3.85, 2/10 of \$0.10  | -$1.18 |
|9/10 of \$2.00, 1/10 of \$1.60 | 9/10 of \$3.85, 1/10 of \$0.10  | -$1.52 |
|10/10 of \$2.00, 0/10 of \$1.60| 10/10 of \$3.85, 0/10 of \$0.10 | -$1.85 |


### Estimating Parameters
