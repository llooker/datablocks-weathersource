# Get Started

Check out our [**Blocks Directory**](https://looker.com/platform/blocks/directory#data) for a full list of data blocks and use cases

[**Start Modeling**](https://discourse.looker.com/t/data-block-data-block-setup-instructions-and-everything-in-between/5949) by reading through this discourse post.



# DDL Statements

Use the following DDL statements as a *reference and starting point* for uploading our datasets into your own DB.

Note: *Our DDL statments follow Amazon Redshift syntax. You may need to adjust data types and other fields as necessary for your dialect.*

[(jump)](#datablocks-gsod-redshift) **Working with Redshift? Refer to our steps below.**

### Schema

```


```


### Add LookML Files to your Looker Project

- Copy the LookML files from this repo [(or download here)](https://github.com/llooker/datablocks-gsod/archive/master.zip)
- Add the files to your Looker project (prefixed with `rs`)
- Change the `connection` parameter in the model file to your Redshift connection

![looker](lookml_upload.gif)


Now you're ready to explore WeatherSource data and combine with your other datasets!
