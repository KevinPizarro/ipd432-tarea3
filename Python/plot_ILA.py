#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Jan  8 22:19:23 2023

@author: kevin_gaman
"""

import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

freq_pipelined = 0.1 #GHz
period_pipelined = 1/freq_pipelined 
tick_pipelined = np.arange(0,15*period_pipelined, period_pipelined).tolist()
tick_pipelined =  [round(number, 1) for number in tick_pipelined]

freq_combinational = 0.03 #GHz
period_combinational = 1/freq_combinational 
tick_combinational = np.arange(0,15*period_combinational, period_combinational).tolist()
tick_combinational =  [round(number, 1) for number in tick_combinational]

plt.rcParams["figure.figsize"] = [7.00, 3.50]
plt.rcParams["figure.autolayout"] = True
files = ["pipelined_manhattan.csv", "combinational_manhattan.csv", "combinational_sum&avg.csv", "pipelined_sum&avg.csv"]

columns = ["Sample in Buffer", "Sample in Window", "TRIGGER", "rx_ready", "en_data", "writeOut[0:0]", "tx_start"]

lim_inf = 509
lim_sup = 525

for index in range(4):
    df = pd.read_csv(files[index], usecols=columns)
    df = df.drop(0)
    print("Contents in csv file:\n\n", df)
    
    time = df["Sample in Window"][lim_inf:lim_sup]
    trigger_data = df["TRIGGER"][lim_inf:lim_sup]
    rx_ready_data = df["rx_ready"][lim_inf:lim_sup]
    en_data = df["en_data"][lim_inf:lim_sup]
    out_data = df["writeOut[0:0]"][lim_inf:lim_sup]
    tx_start_data = df["tx_start"][lim_inf:lim_sup]
    
    plt.figure(index+1, figsize=(10,5))
    
    ax1 = plt.subplot(411)
    plt.fill_between(time, rx_ready_data, step="pre", alpha=0.4, color='blue')
    plt.step(time, rx_ready_data, color='blue')
    plt.tick_params('x', labelbottom=False)
    plt.legend(["rx_ready"])
    plt.title(files[index].replace(".csv", '').replace("_", ' ')+" - ILA")
    
    ax2 = plt.subplot(412)
    plt.fill_between(time, en_data, step="pre", alpha=0.4, color='blue')
    plt.step(time, en_data, color='blue')
    plt.tick_params('x', labelbottom=False)
    plt.legend(["en_data"])
    
    ax3 = plt.subplot(413)
    plt.fill_between(time, out_data, step="pre", alpha=0.4, color='blue')
    plt.step(time, out_data, color='blue')
    plt.tick_params('x', labelbottom=False)
    plt.legend(["writeOut[0:0]"])
    
    ax4 = plt.subplot(414)
    ax4.sharex(ax3);
    plt.fill_between(time, tx_start_data, step="pre", alpha=0.4, color='blue')
    plt.step(time, tx_start_data, color='blue')
    plt.legend(["tx_start"])
    plt.xlabel("Tiempo [ns]")
    
    if "pipelined" in files[index]:
        ax4.set_xticklabels(tick_pipelined)
    else:
        ax4.set_xticklabels(tick_combinational)
        
#    plt.show()
    plt.savefig(files[index].replace("csv", "svg"), dpi=350)