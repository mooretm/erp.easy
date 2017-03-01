<!-- This page can be read using your web browser -->
<!-- Written by Travis Moore on 9-23-15 -->
<h1>README.md</h1>
<h2>Package: erp.easy</h2>
<hr />
<h3>What is erp.easy?</h3>
<p>So you&#8217;ve recorded and cleaned (processed) some ERP data... Now what? If you&#8217;re not a programmer,
or are new to ERPs, the next step may be a bit daunting, or at the very least, time consuming
if done by hand. The erp.easy package provides an intuitive approach to exploring your processed
data, without requiring a background in computer programming. The erp.easy package provides
three categories of functions, optimized to be easy to use: loading ERP files, plotting ERP data, and
analyzing ERP data.</p>
<br />
<h3>What can I do with erp.easy?</h3>
<p><b>Loading Functions</b></p>
<p>The function load.data exists to save you the hassle of opening each individual ERP file and
adding a header or other identifying information to the files. This function expects data formatted
with electrodes across the columns and time points as rows. Additional columns (i.e., "Subject",
"Stimulus", and "Time") will be added upon import to help organize your data. The erp.easy package
will use existing headers provided in raw data files to refer to electrodes for use in functions,
or will assign headers if none are present (see load.data.) Single electrodes can be passed to the
package functions, or several electrodes can be provided (i.e., when using dense arrays) and those
electrodes will be averaged together as a single electrode. Also see the function easy.load for a 
user-friendly way to import your data using the erp.easy data import wizard.</p>
<p><b>See help files/pdf manual for examples</b></p>
<br />
<h3>Plotting Functions</h3>
<p>The plotting functions grandaverage, individual, and mosaic provide several ways to visualize
both grand average and individual data. Color-coding and labeling happens automatically for ease
of use.</p>
<p>Example: <b>grandaverage(ERPdata, electrodes = "V78")</b></p>
<br />
<h3>Analysis Functions</h3>
<p>The analysis functions m.measures and p.measures calculate standard ERP measures such as
mean amplitude, standard deviation, peak amplitude and peak latency for both grand average and
individual waveforms.</p>
<p>Example: <b>m.measures(ERPdata, electrodes = "V78", window = c(1000, 1500))</b></p>

