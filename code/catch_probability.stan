data {
  int<lower=0> N;
  int<lower=0> K;
  int<lower=0,upper=1> out[N];
  vector<lower=0>[N] distance;
  vector<lower=0>[N] hang_time;
  vector<lower=0,upper=1>[N] wall;
  vector<lower=0,upper=1>[N] back;
}
parameters {
  real theta0;
  real theta1;
  real theta2;
  real theta3;
  real theta4;
}
model {
  out ~ bernoulli_logit(theta0 + theta1 * distance + theta2 * hang_time + theta3 * wall + theta4 * back);
}
