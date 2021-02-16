library(tidyverse)

vhs_palettes <-
  list(
    avanti = c("#e53a34ff", "#803038ff", "#80b1b9ff", "#342b22ff"),
    certron = c("#37353aff", "#ee4b42ff", "#fe9a44ff", "#fef746ff", "#73b547ff", "#566baaff", "#a34a8cff"),
    cvs = c("#b38142ff", "#342b22ff", "#dc3b33ff", "#db743eff", "#ecd255ff", "#2a7341ff", "#241b44ff", "#9e545eff"),
    fuji_gp = c("#9e6180ff", "#f37a62ff", "#a4c671ff", "#a1cac2ff", "#ec6c84ff", "#483b2aff"),
    fuji_mp = c("#212119ff", "#3f823fff", "#2d4128ff", "#5a939fff", "#503d58ff", "#e85b6fff", "#f9e059ff"),
    fuji_pro = c("#d7a960ff", "#212119ff", "#3f823fff", "#2d4128ff", "#5a939fff", "#503d58ff", "#e85b6fff", "#f9e059ff"),
    jvc = c("#181a17ff", "#a09a8cff", "#bc7223ff"),
    jvc_xr = c("#8393aaff", "#4e5162ff", "#fa3628ff", "#161817ff"),
    jvc_dyn = c("#e72637ff", "#fa531eff", "#bfb3a5ff", "#302e31ff"),
    maxell_ex = c("#9aa09eff", "#f7211bff", "#00902eff", "#006fb6ff", "#0f1418ff"),
    maxell_gu =c("#1e241eff", "#29a274ff", "#777055ff"),
    maxell_sg = c("#072d5cff", "#02437dff", "#0067b1ff", "#ecd343ff", "#824762ff"),
    memorex_hs = c("#df3d6cff", "#e64b46ff", "#b5c653ff", "#3b4873ff", "#fab34dff", "#3b342eff"),
    multitech = c("#a2a7a1ff", "#192123ff", "#e22629ff", "#249239ff", "#4090abff"),
    panasonic_pro = c("#2f6196", "#83343d", "#1a2123"),
    rainbow = c("#6e3651ff", "#ac3e5dff", "#da3440ff", "#f2884cff", "#f7d95fff", "#746c69ff"),
    recoton = c("#221d17ff", "#345277ff", "#edcf4bff", "#eb6133ff", "#dc3b39ff", "#943d57ff", "#be7682ff"),
    scoth_eg = c("#201e21ff", "#aaafb3ff", "#325d8dff", "#ee4f2dff", "#f3cf3dff"),
    sony = c("#af4047ff", "#ee4b42ff", "#fc7c3dff", "#fcb84eff", "#f9e4c7ff", "#42321bff"),
    sony_es = c("#474745ff", "#fa2833ff", "#16191cff", "#fc622fff"),
    sony_v = c("#e0404aff", "#2c3d73ff", "#323369ff", "#1d1b1cff"),
    tdk_ehg =c("#6b646bff", "#2c2b31ff", "#546f8cff"),
    tdk_vivid = c("#3b345dff", "#c07a3eff", "#edae47ff", "#e44436ff", "#201b15ff"),
    vhs = c("#a1a8aaff", "#090e11ff", "#f97f12ff", "#f3242cff", "#c3367aff", "#372174ff"),
    zenith =c("#3d3230ff", "#234bbaff", "#fc5555ff", "#fef73aff")
  )

usethis::use_data(vhs_palettes, overwrite = TRUE)

# plot a palette
vhs_palettes[["sony_es"]] %>%
  tibble(x=.) %>%
  mutate(x=fct_inorder(x)) %>%
  ggplot() +
  geom_bar(aes(x, fill=x), position = "fill") +
  scale_fill_identity()+
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 90, hjust=1, vjust=0.5),
        axis.text.y = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank())
