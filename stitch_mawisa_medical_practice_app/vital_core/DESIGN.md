---
name: Vital Core
colors:
  surface: '#101415'
  surface-dim: '#101415'
  surface-bright: '#363a3b'
  surface-container-lowest: '#0b0f10'
  surface-container-low: '#191c1e'
  surface-container: '#1d2022'
  surface-container-high: '#272a2c'
  surface-container-highest: '#323537'
  on-surface: '#e0e3e5'
  on-surface-variant: '#bacac5'
  inverse-surface: '#e0e3e5'
  inverse-on-surface: '#2d3133'
  outline: '#859490'
  outline-variant: '#3c4a46'
  surface-tint: '#3cddc7'
  primary: '#57f1db'
  on-primary: '#003731'
  primary-container: '#2dd4bf'
  on-primary-container: '#00574d'
  inverse-primary: '#006b5f'
  secondary: '#ffb95f'
  on-secondary: '#472a00'
  secondary-container: '#ee9800'
  on-secondary-container: '#5b3800'
  tertiary: '#dcd9da'
  on-tertiary: '#303031'
  tertiary-container: '#bfbdbe'
  on-tertiary-container: '#4d4c4d'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#62fae3'
  primary-fixed-dim: '#3cddc7'
  on-primary-fixed: '#00201c'
  on-primary-fixed-variant: '#005047'
  secondary-fixed: '#ffddb8'
  secondary-fixed-dim: '#ffb95f'
  on-secondary-fixed: '#2a1700'
  on-secondary-fixed-variant: '#653e00'
  tertiary-fixed: '#e5e2e3'
  tertiary-fixed-dim: '#c8c6c7'
  on-tertiary-fixed: '#1b1b1c'
  on-tertiary-fixed-variant: '#474647'
  background: '#101415'
  on-background: '#e0e3e5'
  surface-variant: '#323537'
typography:
  h1:
    fontFamily: Lexend
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  h2:
    fontFamily: Lexend
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.01em
  h3:
    fontFamily: Lexend
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
    letterSpacing: '0'
  body-lg:
    fontFamily: Lexend
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
    letterSpacing: '0'
  body-md:
    fontFamily: Lexend
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
    letterSpacing: '0'
  label-bold:
    fontFamily: Lexend
    fontSize: 14px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: 0.05em
  label-sm:
    fontFamily: Lexend
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.2'
    letterSpacing: '0'
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 48px
  gutter: 24px
  margin: 32px
---

## Brand & Style

This design system establishes a commanding and energetic presence within the healthcare space, moving away from traditional clinical whites and soft blues. The brand personality is **authoritative, proactive, and resilient**. It is designed for a target audience that values clarity, speed of information, and a sense of empowerment over their health data.

The aesthetic follows a **High-Contrast / Bold** style. It leverages deep dark backgrounds to allow vibrant accents to "pop," creating a focused environment that reduces eye strain while highlighting critical actions. The interface feels dynamic through the use of aggressive saturation and intentional whitespace, ensuring the UI feels premium and decisive rather than cluttered.

## Colors

The palette is anchored by **Charcoal Gray (#1A1A1B)**, serving as the primary canvas to establish a sophisticated, high-end atmosphere. This dark foundation is punctured by **Vibrant Teal (#2DD4BF)**, used for primary actions, success states, and brand-heavy elements to evoke a sense of modern medical innovation.

**Amber Gold (#F59E0B)** is reserved strictly for high-priority Calls to Action (CTAs) and critical alerts, ensuring these elements achieve maximum visual prominence against the dark background. A secondary neutral palette of cool grays and off-whites provides legibility for long-form data and secondary labels.

## Typography

The design system utilizes **Lexend** (as the closest available match to the requested Montserrat/Bold aesthetic) to maintain an athletic, highly readable, and confident presence. The type scale is aggressive, featuring large, heavy-weight headers that provide an immediate sense of hierarchy and authority.

Headlines should always use bold or extra-bold weights to anchor the page. Body text remains generous in size (16px minimum) to ensure accessibility for all users, including those in high-stress medical environments. Labels and overlines utilize increased letter spacing and uppercase styling to provide a structural contrast to the fluid body copy.

## Layout & Spacing

The design system employs a **Fluid Grid** model centered on an 8px spacing system, ensuring rhythmic consistency across all viewports. A 12-column grid is used for desktop layouts with generous 24px gutters to allow the high-contrast elements "room to breathe."

Layouts should favor verticality and clear segmentation. Use significant padding (XL units) to separate distinct functional modules, such as patient charts from navigation panels. This "island" approach to layout ensures that data-heavy screens remain scannable and never feel overwhelming.

## Elevation & Depth

Hierarchy is established through **Tonal Layers** rather than heavy shadows. Since the background is Charcoal Gray, depth is created by lifting foreground elements into slightly lighter shades of gray (e.g., #262627). 

To maintain the "Bold & Energetic" feel, use **Inner Glows** and **High-Contrast Outlines** for active states. A subtle 1px border in Teal or a translucent white can be used to define card edges. Shadows, when used, should be crisp and high-opacity (Short Shadows) to maintain the authoritative, structured aesthetic of the system.

## Shapes

The design system utilizes a **Medium (12px)** corner radius to balance the "authoritative" feel with "accessibility." This 12px standard (represented by `rounded-lg`) applies to cards, input fields, and primary containers. 

This specific radius softens the high-contrast color palette, making the bold teal and gold accents feel more approachable and modern. Smaller components like chips or tags should scale down to 8px, while large modal containers can scale up to 24px to emphasize their importance as overlaying surfaces.

## Components

### Buttons & CTAs
- **Primary:** Solid Vibrant Teal with Charcoal text. Bold weight, 12px radius.
- **Urgent (CTA):** Solid Amber Gold with Charcoal text. Used for "Book Appointment" or "Emergency."
- **Ghost:** Teal 2px border with Teal text. Used for secondary actions.

### Input Fields
Inputs use a dark-filled background (slightly lighter than the base charcoal) with a 1px border. On focus, the border transitions to a 2px Teal stroke with a subtle outer glow.

### Cards
Cards utilize the 12px radius and a slightly elevated background color. They do not use shadows by default; instead, they use a subtle 1px border (#ffffff10) to define their boundaries against the dark canvas.

### Vital Signs & Data Visualization
Use the primary Teal for healthy ranges and Amber Gold for warning thresholds. Charts should be minimalist, using thick stroke weights (3px+) to maintain the "Bold" brand narrative.

### Status Chips
Chips are pill-shaped with high-saturation backgrounds and high-contrast text. They provide immediate visual feedback on patient status or appointment types.