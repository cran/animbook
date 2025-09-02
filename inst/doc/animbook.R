## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(animbook)

## -----------------------------------------------------------------------------
categorized_dbl <- anim_prep(data = dbl_change, 
                             id = id, 
                             values = values,
                             time = time)

## -----------------------------------------------------------------------------
# rank scaling
rank_scaling <- anim_prep(data = dbl_change, 
                             id = id, 
                             values = values,
                             time = time)

# absolute scaling
absolute_scaling <- anim_prep(data = dbl_change, 
                             id = id, 
                             values = values,
                             time = time,
                             scaling = "absolute")

# rank scaling by group
rank_group_scaling <- anim_prep(data = dbl_change, 
                             id = id, 
                             values = values,
                             time = time,
                             group_scaling = gp)

# absolute scaling by group
absolute_group_scaling <- anim_prep(data = dbl_change, 
                             id = id, 
                             values = values,
                             time = time,
                             group_scaling = gp,
                             scaling = "absolute")

rank_scaling

## -----------------------------------------------------------------------------
dbl_categorized <- anim_prep(data = dbl_change, 
                             id = id, 
                             values = values,
                             time = time,
                             group = gp)

# kangaroo plot
kangaroo_plot(dbl_categorized)

# wallaby plot
wallaby_plot(dbl_categorized)
            
# funnel web spider plot
funnel_web_plot(dbl_categorized)

## ----eval = TRUE--------------------------------------------------------------
aeles_cat <- anim_prep_cat(data = aeles, id = id, values = party, time = year, group = gender)

p <- wallaby_plot(aeles_cat)

p2 <- anim_animate(p)

gganimate::animate(p2)

