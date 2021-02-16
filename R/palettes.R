#' View all VHS palettes
#'
#' @return A plot of all colour palettes
#' @export
view_all_vhs_palettes <- function(){

  purrr::imap(vhs_palettes,
              ~tibble::tibble(palette=.y, hex=.x) %>%
                dplyr::mutate(hex = forcats::fct_inorder(rev(hex))) %>%
                ggplot2::ggplot(ggplot2::aes(palette, fill=hex))+
                ggplot2::geom_bar()+
                ggplot2::scale_fill_identity()+
                ggplot2::coord_flip()+
                ggplot2::theme_void()+
                ggplot2::theme(axis.text.y = ggplot2::element_text())) %>%
    patchwork::wrap_plots(ncol=1)

}


#' Choose a VHS palette
#'
#' @param name name of VHS palette
#' @param n Number of colours required from palette
#' @param type Discrete "d" or continuous "c" (default - "c")
#'
#' @return A vector of colours
#' @export
#'
#' @examples
#' vhs("vhs")
vhs <- function(name, n, type = "d"){

  pal <- vhs_palettes[[name]]

  if(is.null(pal)) stop("Palette not found")

  if(missing(n)){n <- length(pal)}

  if(type == "d" && (n > length(pal))) stop("Palette does not contain enough colours")

  if(type == "d"){
    out <- pal[1:n]
  } else if (type == "c"){
    out <- grDevices::colorRampPalette(pal)(n)
  } else {
    stop("Type must be \"d\" for discrete or \"c\" for continuous")
  }

  out
}
