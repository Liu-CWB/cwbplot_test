Frequently Asked Questions
===========================

uses more memory when xarray is enabled.  Is there a memory leak?
-------------------------------------------------------------------------------------

The difference in memory usage can be observed when running the following code with 
and without xarray enabled (



When xarray is enabled, there is an internal thread-local cache used to hold the 
XLAT and XLONG coordinate variables, along with a boolean variable to remember 
if a particular file or sequence is from a moving nest. This is useful when 
working with sequences of WRF files, so that the XLAT and XLONG variables 
aren't repeatedly extracted. This cache is limited to holding 20 items by 
default, where the key to each cache entry is the object ID for the file 
or sequence of files. In this particular example, a new file object is created 
for each iteration, which will have a new object ID, so the 20 cache spots are 
going to be filled up.  Memory usage will be quite a bit higher for the 
xarray-enabled case, but the memory usage will eventually top off.




Can I use input to the wrf-python functions?
--------------------------------------------------------------------------

Currently, wrf-python is designed to use the API for PyNIO and netCDF4-python, 
which differs from the xarray.Dataset API.  However, there is an undocumented 
feature for Dataset objects that can be used as workaround.  Each Dataset 
object has a hat can be used 
to obtain the underlying netCDF file object.  Keep in mind that this is not in 
the public API for xarray, so it could break in a future release. 
