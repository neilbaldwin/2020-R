### What is 2020-R?

2020-R is a Touch OSC project that adds even more random functionality to DUB-Russell's superb (and already very random) [2020 Beat Machine](https://2020.dubrussell.com/)

#### Updates

31-08-2024 Major update: now added PRESETS and MIXER tabs so you can recall presets and change mixer settings as part of performance

20-08-2024 WARNING: changed behaviour for RESET. Now RESET is a button that resets any selected parameters (it's no longer a selection button)
19-08-2024 Added support for SLICER (on the TONE group tab). See below for information.
18-08-2024 Added support for the TONE group: LOOPER1, LOOPER2 and LOOPER3

### Rationale

While 2020 is *packed* full of real-time randomisation, there is no function to generate random presets in the Samplers, Synths and FX. Why would you want to do that? As DUB-Russell says, *"Don't think, RANDOMISE!"* (he said "BEAT" but...you know...)

### How does it work?

First off, if for some reason you've reached here and you don't have it,  you need [2020 Beat Machine](https://2020.dubrussell.com/)

Then you need[TouchOSC MK2 by Hexler](https://hexler.net/touchosc)

TouchOSC MK2 added super-powerful LUA scripting which is what 2020-R uses to interact with the 2020 application.

I'm not going to teach you how to install and use Touch OSC. The guides and tutorials on the Hexler website are good.

### Interface

![ui](https://github.com/neilbaldwin/2020-R/blob/main/img/2020-R%20UI.png)

Each of 2020's "Groups" is organised into tabs. Within each tab there are the same sub-groups (samplers, instruments etc.) as you find in the 2020 app.

Within each sub-group there are two sections. On the right-hand side are the Send Controls. Here you can select if you want to send random absolute values (VALUE) or send randomised Probability and Range for the 2020 parameters that support that function. You can also elect to reset parameters back to their default values by selecting the RESET button.

The remainder of each group section is the Parameter Selection buttons. These are the ones that match the colour of the tab...and a *similar* colour to the corresponding Group in 2020) and are loosely organised into parameter types e.g. you'll find all Envelopes grouped in a "ENVS" group, all LFOs groups in a "LFO" group etc.

### How to use 2020-R

You first need to select the parameters you wish to randomise. You can select as many as you like.

*Tip: there's a "hidden" button on each sub-group. You can click/tap on the sub-group name e.g. "GRP 1-2 Sampler" and it will toggle all of that groups button on/off.*

Then on the right-hand side, select whether you want to send random absolute values (VALUES) or Probability and Range values (RANGE). Or both!

Then press/click on the RANDOM button to send random values to 2020.

You can also reset the selected parameters back to their default values by clicking/pressing on the RESET button. Note this behaviour has changed since the 20-08-24 update.

That's it!

#### FX Tab

The FX tab is slightly different in that ALL of the FX parameters are grouped together. However there is an additional 'hidden' helper button in each FX type. Press/click on the strip below the grouped parameters to toggle the selection on/off.

#### (TONE) SLICER

Controls to randomise parameter for the SLICER group can be found on the TONE tab.

Most of the control work in exactly the same way as other groups apart from the controls in the SEQ section. Here you'll find switches for STEPS, RES and a radial dial labelled DENSITY

STEPS will randomise the vertical value of the current steps in the sequence. The DESNITY radial control controls how densely the seqence will be randomised.

RES (resolution) randomises the number of divisions per step.

### Usage

Feel free to use and modify it however you feel/need. You can dig into the script files in the TouchOSC editor but I've also included the LUA source code as separate files in case you find those useful. The same code is attached to buttons/documents in the TouchOSC project.

If you find it useful and want to support my work and future updates then you can show your appreciation here:

[Buy Me a Coffee](https://buymeacoffee.com/neilbaldwi3)

🙏
