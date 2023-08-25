# Inverted_Double_Pendulum-

This repository contains the code and documentation for the **Design and Control of a Double Inverted Pendulum for Precise and Accurate Motion** project. The project explores advanced control techniques applied to a complex and inherently unstable system consisting of a double inverted pendulum mounted on a cart.

## Table of Contents
- [Introduction](#introduction)
- [System Modeling and Assumptions](#system-modeling-and-assumptions)
- [System Properties](#system-properties)
- - [Controllability](#controllability)
- - [Observability](#observability)
- - [Stability](#stability)
- [Full-State Feedback Controller](#full-state-feedback-controller)
- [Linear Quadratic Regulator (LQR) Controller](#linear-quadratic-regulator-lqr-controller)
- [Results](#results)
- - [Full-State Feedback Controller Results](#full-state-feedback-controller-results)
- - [Linear Quadratic Regulator Controller Results](#linear-quadratic-regulator-controller-results)
- [Discussion](#discussion)

## Introduction
In this project, we delve into the realm of modern control techniques to stabilize and control a double inverted pendulum mounted on a cart. The system is modeled mathematically and simulated using tools like Simulink to gain insights into its behavior.

## System Modeling and Assumptions
We start by defining the system's dynamics and assumptions. The mathematical equations of motion are derived using the Lagrangian method. These equations are then linearized about an equilibrium point to create a linear state space model for simulation.

## System Properties
The system's properties are analyzed, including its controllability, observability, and stability. The controllability and observability matrices are computed to determine the system's controllability and observability. The system's stability is assessed by analyzing its characteristic equation.

## Full-State Feedback Controller
A full-state feedback controller is designed to stabilize the system. The desired closed-loop eigenvalues are chosen to achieve specific performance, and the controller gains are computed accordingly. The closed-loop system is simulated using Simulink, and the results are analyzed.

## Linear Quadratic Regulator (LQR) Controller
An LQR controller is designed to optimize the system's performance based on a cost function. Different weighting matrices Q and R are chosen to influence the controller behavior. The controller gains are calculated, and the closed-loop system is simulated and evaluated.

## Results
Both the full-state feedback and LQR controllers are simulated, and their performances are evaluated. Plots of system states, inputs, and other relevant metrics are provided for analysis.

## Discussion
A discussion of the results and controller performances is presented. The effects of different controller designs and weighting matrices on the system's behavior are analyzed.

For more details, refer to the specific sections and code in this repository.
