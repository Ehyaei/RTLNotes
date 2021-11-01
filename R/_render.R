############################################################
#                                                          #
#              Create Snapshot from examples               #
#                                                          #
############################################################

library("magick")
examples_name = list.files("examples/")
examples_path = paste0("examples/",examples_name,"/",examples_name,".pdf")
for(i in 1:length(examples_name)){
  pages <- magick::image_read_pdf(examples_path[i],density = 150)
  image_write(pages[1], path = paste0("man/figures/",examples_name[i],".png"), format = "png")
  image_write(pages[1], path = paste0("examples/",examples_name[i],"/",examples_name[i],".png"), format = "png")
  print(i)
}

## Convert Interior page to PNG
examples_name = "interior_feature_pdf_report"
examples_path = paste0("examples/",examples_name,"/",examples_name,".pdf")
pages <- magick::image_read_pdf(examples_path,density = 150)
for(i in 2:3){
  image_write(pages[i], path = paste0("man/figures/",examples_name,"_",i,".png"), format = "png")
  image_write(pages[i], path = paste0("examples/",examples_name,"/",examples_name,"_",i,".png"), format = "png")

}

