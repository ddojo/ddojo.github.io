# Experimental!
~ "git: github.com/Omnikar/uiua-plot" ~ Data PlotConfig Histogram
~ "git: github.com/Omnikar/uiua-math" ~ BoxMuller

μ ← ÷⊃⧻(/+)
σ ← √÷-1⊃⧻(/+)×.-⊸μ
𝒩 ← ◌ BoxMuller°⊟ gen :⚂⊟2
≡𝒩 ⍥5 10000

t ← ×√ 4÷≡⊃σ μ
z ← ×√ 4≡μ
⊃t z
# ⊟

PC ← PlotConfig!(
  New
  # Minimum and maximum x bounds
  °⊸XBounds ¯4.0_4.0
  # Minimum and maximum y bounds
  °⊸YBounds ¯0.0_2300.0
  # Spacing between gridlines in the x and y directions
  °⊸GridlineInterval 0.5_100
  # Size of the image to produce
  # °⊸Size 800_400
  # Label of the x-axis
  #°⊸XLabel "t"
)

&ims ⬚∘Histogram PC Data
&ims ⬚∘Histogram PC Data
