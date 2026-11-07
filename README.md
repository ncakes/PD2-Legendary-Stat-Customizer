# Legendary Stat Customizer

## Overview

This mod allows you to replace the stats of legendary attachments with that of a normal attachment. It also allows you to visually hide barrel extensions when a legendary barrel is equipped.

Compatible with [Add-On Legendary Attachments](https://github.com/ncakes/PD2-Add-On-Legendary-Attachments).

## Client Detection Risk

In stealth, the host calculates client concealment independently using the parts that the host sees. If the synced part has lower concealment, the host calculates you with lower concealment (i.e. higher detection risk, harmful). Conversely, if the synced part has higher concealment, it benefits you. For loud, it doesn't matter because crit chance is handled locally.

Real legendary attachments are synced normally. The host sees whatever stats they have configured for the real legendary attachment. If you are hosting, this also applies to clients joining your lobby.

Add-on legendary attachments are synced as the based-on part defined by AOLA. When you choose to copy a part's stats, Legendary Stat Customizer will try to use the copied part for syncing if possible, which will remove the difference.

## Installation

This mod requires [SuperBLT](https://superblt.znix.xyz).

Download `Legendary-Stat-Customizer_<ver>.zip` from the [latest release page](https://github.com/ncakes/PD2-Legendary-Stat-Customizer/releases/latest) and extract the entire contents to your `mods` folder.

```
C:\Program Files (x86)\Steam\steamapps\common\PAYDAY 2\mods
```
