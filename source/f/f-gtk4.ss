;; Copyright (c) 2019 Xu Xin <sxuxin@protonmail.com>

(library (f-gtk4)
  (export g-callback g-application-run g-signal-connect-object g-object-unref
	  gtk-about-dialog-new gtk-about-dialog-add-credit-section
	  gtk-about-dialog-get-artists gtk-about-dialog-get-authors
	  gtk-about-dialog-get-comments gtk-about-dialog-get-copyright
	  gtk-about-dialog-get-documenters gtk-about-dialog-get-license
	  gtk-about-dialog-get-license-type gtk-about-dialog-get-logo
	  gtk-about-dialog-get-logo-icon-name
	  gtk-about-dialog-get-program-name
	  gtk-about-dialog-get-system-information
	  gtk-about-dialog-get-translator-credits gtk-about-dialog-get-version
	  gtk-about-dialog-get-website gtk-about-dialog-get-website-label
	  gtk-about-dialog-get-wrap-license gtk-about-dialog-set-artists
	  gtk-about-dialog-set-authors gtk-about-dialog-set-comments
	  gtk-about-dialog-set-copyright gtk-about-dialog-set-documenters
	  gtk-about-dialog-set-license gtk-about-dialog-set-license-type
	  gtk-about-dialog-set-logo gtk-about-dialog-set-logo-icon-name
	  gtk-about-dialog-set-program-name
	  gtk-about-dialog-set-system-information
	  gtk-about-dialog-set-translator-credits gtk-about-dialog-set-version
	  gtk-about-dialog-set-website gtk-about-dialog-set-website-label
	  gtk-about-dialog-set-wrap-license
	  gtk-action-bar-new gtk-action-bar-get-center-widget
	  gtk-action-bar-get-revealed gtk-action-bar-pack-end
	  gtk-action-bar-pack-start gtk-action-bar-remove
	  gtk-action-bar-set-center-widget gtk-action-bar-set-revealed
	  gtk-activate-action-get
	  gtk-adjustment-new gtk-adjustment-clamp-page
	  gtk-adjustment-configure
	  gtk-adjustment-get-lower gtk-adjustment-get-minimum-increment
	  gtk-adjustment-get-page-increment gtk-adjustment-get-page-size
	  gtk-adjustment-get-step-increment gtk-adjustment-get-upper
	  gtk-adjustment-get-value gtk-adjustment-set-lower
	  gtk-adjustment-set-page-increment gtk-adjustment-set-page-size
	  gtk-adjustment-set-step-increment gtk-adjustment-set-upper
	  gtk-adjustment-set-value
	  gtk-alternative-trigger-new gtk-alternative-trigger-get-first
	  gtk-alternative-trigger-get-second
	  gtk-any-filter-new
	  gtk-app-chooser-button-new gtk-app-chooser-button-append-custom-item
	  gtk-app-chooser-button-append-separator
	  gtk-app-chooser-button-get-heading gtk-app-chooser-button-get-modal
	  gtk-app-chooser-button-get-show-default-item
	  gtk-app-chooser-button-get-show-dialog-item
	  gtk-app-chooser-button-set-active-custom-item
	  gtk-app-chooser-button-set-heading gtk-app-chooser-button-set-modal
	  gtk-app-chooser-button-set-show-default-item
	  gtk-app-chooser-button-set-show-dialog-item
	  gtk-app-chooser-dialog-new
	  gtk-app-chooser-dialog-new-for-content-type
	  gtk-app-chooser-dialog-get-heading gtk-app-chooser-dialog-get-widget
	  gtk-app-chooser-dialog-set-heading
	  gtk-app-chooser-widget-new gtk-app-chooser-widget-get-default-text
	  gtk-app-chooser-widget-get-show-all
	  gtk-app-chooser-widget-get-show-default
	  gtk-app-chooser-widget-get-show-fallback
	  gtk-app-chooser-widget-get-show-other
	  gtk-app-chooser-widget-get-show-recommended
	  gtk-app-chooser-widget-set-default-text
	  gtk-app-chooser-widget-set-show-all
	  gtk-app-chooser-widget-set-show-default
	  gtk-app-chooser-widget-set-show-fallback
	  gtk-app-chooser-widget-set-show-other
	  gtk-app-chooser-widget-set-show-recommended
	  gtk-application-new gtk-application-add-window
	  gtk-application-get-accels-for-action
	  gtk-application-get-actions-for-accel
	  gtk-application-get-active-window
	  gtk-application-get-menu-by-id gtk-application-get-menubar
	  gtk-application-get-window-by-id gtk-application-get-windows
	  gtk-application-inhibit gtk-application-list-action-descriptions
	  gtk-application-remove-window gtk-application-set-accels-for-action
	  gtk-application-set-menubar gtk-application-uninhibit
	  gtk-application-window-new gtk-application-window-get-help-overlay
	  gtk-application-window-get-id gtk-application-window-get-show-menubar
	  gtk-application-window-set-help-overlay
	  gtk-application-window-set-show-menubar
	  gtk-aspect-frame-new gtk-aspect-frame-get-child
	  gtk-aspect-frame-get-obey-child gtk-aspect-frame-get-ratio
	  gtk-aspect-frame-get-xalign gtk-aspect-frame-get-yalign
	  gtk-aspect-frame-set-child gtk-aspect-frame-set-obey-child
	  gtk-aspect-frame-set-ratio gtk-aspect-frame-set-xalign
	  gtk-aspect-frame-set-yalign
	  gtk-assistant-new gtk-assistant-add-action-widget
	  gtk-assistant-append-page gtk-assistant-commit
	  gtk-assistant-get-current-page gtk-assistant-get-n-pages
	  gtk-assistant-get-nth-page gtk-assistant-get-page
	  gtk-assistant-get-page-complete gtk-assistant-get-page-title
	  gtk-assistant-get-page-type gtk-assistant-get-pages
	  gtk-assistant-insert-page gtk-assistant-next-page
	  gtk-assistant-prepend-page gtk-assistant-previous-page
	  gtk-assistant-remove-action-widget gtk-assistant-remove-page
	  gtk-assistant-set-current-page gtk-assistant-set-forward-page-func
	  gtk-assistant-set-page-complete gtk-assistant-set-page-title
	  gtk-assistant-set-page-type gtk-assistant-update-buttons-state
	  gtk-assistant-page-get-child
	  gtk-at-context-create gtk-at-context-get-accessible
	  gtk-at-context-get-accessible-role
	  gtk-bin-layout-new
	  gtk-bookmark-list-new gtk-bookmark-list-get-attributes
	  gtk-bookmark-list-get-filename gtk-bookmark-list-get-io-priority
	  gtk-bookmark-list-is-loading gtk-bookmark-list-set-attributes
	  gtk-bookmark-list-set-io-priority
	  gtk-bool-filter-new  gtk-bool-filter-get-expression
	  gtk-bool-filter-get-expression gtk-bool-filter-get-invert
	  gtk-bool-filter-set-expression gtk-bool-filter-set-invert
	  gtk-box-new gtk-box-append gtk-box-get-baseline-position
	  gtk-box-get-homogeneous gtk-box-get-spacing
	  gtk-box-insert-child-after gtk-box-prepend gtk-box-remove
	  gtk-box-reorder-child-after gtk-box-set-baseline-position
	  gtk-box-set-homogeneous gtk-box-set-spacing
	  gtk-box-layout-new gtk-box-layout-get-baseline-position
	  gtk-box-layout-get-homogeneous gtk-box-layout-get-spacing
	  gtk-box-layout-set-baseline-position gtk-box-layout-set-homogeneous
	  gtk-box-layout-set-spacing
	  gtk-button-new gtk-button-new-from-icon-name
	  gtk-button-new-with-label gtk-button-new-with-mnemonic
	  gtk-button-get-child gtk-button-get-has-frame
	  gtk-button-get-icon-name gtk-button-get-label
	  gtk-button-get-use-underline gtk-button-set-child
	  gtk-button-set-has-frame gtk-button-set-icon-name
	  gtk-button-set-label gtk-button-set-use-underline
	  gtk-calendar-new gtk-calendar-clear-marks gtk-calendar-get-date
	  gtk-calendar-get-day-is-marked gtk-calendar-get-show-day-names
	  gtk-calendar-get-show-heading gtk-calendar-get-show-week-numbers
	  gtk-calendar-mark-day gtk-calendar-select-day
	  gtk-calendar-set-show-day-names gtk-calendar-set-show-heading
	  gtk-calendar-set-show-week-numbers gtk-calendar-unmark-day
	  gtk-callback-action-new
	  gtk-cclosure-expression-new
	  gtk-cell-area-activate gtk-cell-area-activate-cell gtk-cell-area-add
	  gtk-cell-area-add-focus-sibling gtk-cell-area-add-with-properties
	  gtk-cell-area-apply-attributes gtk-cell-area-attribute-connect
	  gtk-cell-area-attribute-disconnect
	  gtk-cell-area-attribute-get-column gtk-cell-area-cell-get
	  gtk-cell-area-cell-get-property gtk-cell-area-cell-get-valist
	  gtk-cell-area-cell-set gtk-cell-area-cell-set-property
	  gtk-cell-area-cell-set-valist gtk-cell-area-copy-context
	  gtk-cell-area-create-context gtk-cell-area-event gtk-cell-area-focus
	  gtk-cell-area-foreach gtk-cell-area-foreach-alloc
	  gtk-cell-area-get-cell-allocation gtk-cell-area-get-cell-at-position
	  gtk-cell-area-get-current-path-string gtk-cell-area-get-edit-widget
	  gtk-cell-area-get-edited-cell gtk-cell-area-get-focus-cell
	  gtk-cell-area-get-focus-from-sibling gtk-cell-area-get-focus-siblings
	  gtk-cell-area-get-preferred-height
	  gtk-cell-area-get-preferred-height-for-width
	  gtk-cell-area-get-preferred-width
	  gtk-cell-area-get-preferred-width-for-height
	  gtk-cell-area-get-request-mode gtk-cell-area-has-renderer
	  gtk-cell-area-inner-cell-area gtk-cell-area-is-activatable
	  gtk-cell-area-is-focus-sibling gtk-cell-area-remove
	  gtk-cell-area-remove-focus-sibling gtk-cell-area-request-renderer
	  gtk-cell-area-set-focus-cell gtk-cell-area-snapshot
	  gtk-cell-area-stop-editing
	  gtk-cell-area-box-new gtk-cell-area-box-get-spacing
	  gtk-cell-area-box-pack-end gtk-cell-area-box-pack-start
	  gtk-cell-area-box-set-spacing
	  gtk-cell-area-context-allocate gtk-cell-area-context-get-allocation
	  gtk-cell-area-context-get-area
	  gtk-cell-area-context-get-preferred-height
	  gtk-cell-area-context-get-preferred-height-for-width
	  gtk-cell-area-context-get-preferred-width
	  gtk-cell-area-context-get-preferred-width-for-height
	  gtk-cell-area-context-push-preferred-height
	  gtk-cell-area-context-push-preferred-width
	  gtk-cell-area-context-reset
	  gtk-cell-renderer-activate gtk-cell-renderer-get-aligned-area
	  gtk-cell-renderer-get-alignment gtk-cell-renderer-get-fixed-size
	  gtk-cell-renderer-get-is-expanded gtk-cell-renderer-get-is-expander
	  gtk-cell-renderer-get-padding
	  gtk-cell-renderer-get-preferred-height
	  gtk-cell-renderer-get-preferred-height-for-width
	  gtk-cell-renderer-get-preferred-size
	  gtk-cell-renderer-get-preferred-width
	  gtk-cell-renderer-get-preferred-width-for-height
	  gtk-cell-renderer-get-request-mode gtk-cell-renderer-get-sensitive
	  gtk-cell-renderer-get-state gtk-cell-renderer-get-visible
	  gtk-cell-renderer-is-activatable gtk-cell-renderer-set-alignment
	  gtk-cell-renderer-set-fixed-size gtk-cell-renderer-set-is-expanded
	  gtk-cell-renderer-set-is-expander gtk-cell-renderer-set-padding
	  gtk-cell-renderer-set-sensitive gtk-cell-renderer-set-visible
	  gtk-cell-renderer-snapshot
	  gtk-cell-renderer-accel-new
	  gtk-cell-renderer-combo-new
	  gtk-cell-renderer-pixbuf-new
	  gtk-cell-renderer-progress-new
	  gtk-cell-renderer-spin-new
	  gtk-cell-renderer-spinner-new
	  gtk-cell-renderer-text-new
	  gtk-cell-renderer-text-set-fixed-height-from-font
	  gtk-cell-renderer-toggle-new gtk-cell-renderer-toggle-get-activatable
	  gtk-cell-renderer-toggle-get-active gtk-cell-renderer-toggle-get-radio
	  gtk-cell-renderer-toggle-set-activatable
	  gtk-cell-renderer-toggle-set-active gtk-cell-renderer-toggle-set-radio
	  gtk-cell-view-new gtk-cell-view-new-with-context
	  gtk-cell-view-new-with-markup gtk-cell-view-new-with-text
	  gtk-cell-view-new-with-texture gtk-cell-view-get-displayed-row
	  gtk-cell-view-get-draw-sensitive gtk-cell-view-get-fit-model
	  gtk-cell-view-get-model gtk-cell-view-set-displayed-row
	  gtk-cell-view-set-draw-sensitive gtk-cell-view-set-fit-model
	  gtk-cell-view-set-model
	  gtk-center-box-new gtk-center-box-get-baseline-position
	  gtk-center-box-get-center-widget gtk-center-box-get-end-widget
	  gtk-center-box-get-start-widget gtk-center-box-set-baseline-position
	  gtk-center-box-set-center-widget gtk-center-box-set-end-widget
	  gtk-center-box-set-start-widget
	  gtk-center-layout-new gtk-center-layout-get-baseline-position
	  gtk-center-layout-get-center-widget gtk-center-layout-get-end-widget
	  gtk-center-layout-get-orientation gtk-center-layout-get-start-widget 
	  gtk-center-layout-set-baseline-position
	  gtk-center-layout-set-center-widget gtk-center-layout-set-end-widget
	  gtk-center-layout-set-orientation gtk-center-layout-set-start-widget
	  gtk-check-button-new gtk-check-button-new-with-label
	  gtk-check-button-new-with-mnemonic gtk-check-button-get-active
	  gtk-check-button-get-inconsistent gtk-check-button-get-label
	  gtk-check-button-get-use-underline gtk-check-button-set-active
	  gtk-check-button-set-group gtk-check-button-set-inconsistent
	  gtk-check-button-set-label gtk-check-button-set-use-underline
	  gtk-closure-expression-new
	  gtk-color-button-new gtk-color-button-new-with-rgba
	  gtk-color-button-get-modal gtk-color-button-get-title
	  gtk-color-button-set-modal gtk-color-button-set-title
	  gtk-color-chooser-dialog-new
	  gtk-color-chooser-widget-new
	  gtk-column-view-new gtk-column-view-append-column
	  gtk-column-view-get-columns gtk-column-view-get-enable-rubberband
	  gtk-column-view-get-model gtk-column-view-get-reorderable
	  gtk-column-view-get-show-column-separators
	  gtk-column-view-get-show-row-separators
	  gtk-column-view-get-single-click-activate gtk-column-view-get-sorter
	  gtk-column-view-insert-column gtk-column-view-remove-column
	  gtk-column-view-set-enable-rubberband gtk-column-view-set-model
	  gtk-column-view-set-reorderable
	  gtk-column-view-set-show-column-separators
	  gtk-column-view-set-show-row-separators
	  gtk-column-view-set-single-click-activate
	  gtk-column-view-sort-by-column
	  gtk-column-view-column-new gtk-column-view-column-get-column-view
	  gtk-column-view-column-get-expand gtk-column-view-column-get-factory
	  gtk-column-view-column-get-fixed-width
	  gtk-column-view-column-get-header-menu
	  gtk-column-view-column-get-resizable gtk-column-view-column-get-sorter
	  gtk-column-view-column-get-title gtk-column-view-column-get-visible
	  gtk-column-view-column-set-expand gtk-column-view-column-set-factory
	  gtk-column-view-column-set-fixed-width
	  gtk-column-view-column-set-header-menu
	  gtk-column-view-column-set-resizable gtk-column-view-column-set-sorter
	  gtk-column-view-column-set-title gtk-column-view-column-set-visible
	  gtk-combo-box-new gtk-combo-box-new-with-entry
	  gtk-combo-box-new-with-model gtk-combo-box-new-with-model-and-entry
	  gtk-combo-box-get-active gtk-combo-box-get-active-id
	  gtk-combo-box-get-active-iter gtk-combo-box-get-button-sensitivity
	  gtk-combo-box-get-child gtk-combo-box-get-entry-text-column
	  gtk-combo-box-get-has-entry gtk-combo-box-get-id-column
	  gtk-combo-box-get-model gtk-combo-box-get-popup-fixed-width
	  gtk-combo-box-get-row-separator-func gtk-combo-box-popdown
	  gtk-combo-box-popup gtk-combo-box-popup-for-device
	  gtk-combo-box-set-active gtk-combo-box-set-active-id
	  gtk-combo-box-set-active-iter gtk-combo-box-set-button-sensitivity
	  gtk-combo-box-set-child gtk-combo-box-set-entry-text-column
	  gtk-combo-box-set-id-column gtk-combo-box-set-model
	  gtk-combo-box-set-popup-fixed-width gtk-combo-box-set-row-separator-func
	  gtk-combo-box-text-new gtk-combo-box-text-new-with-entry
	  gtk-combo-box-text-append gtk-combo-box-text-append-text
	  gtk-combo-box-text-get-active-text gtk-combo-box-text-insert
	  gtk-combo-box-text-insert-text gtk-combo-box-text-prepend
	  gtk-combo-box-text-prepend-text gtk-combo-box-text-remove
	  gtk-combo-box-text-remove-all
	  gtk-constant-expression-new gtk-constant-expression-new-for-value
	  gtk-constant-expression-get-value
	  gtk-constraint-new gtk-constraint-new-constant
	  gtk-constraint-get-constant gtk-constraint-get-multiplier
	  gtk-constraint-get-relation gtk-constraint-get-source
	  gtk-constraint-get-source-attribute gtk-constraint-get-strength
	  gtk-constraint-get-target gtk-constraint-get-target-attribute
	  gtk-constraint-is-attached gtk-constraint-is-constant
	  gtk-constraint-is-required
	  gtk-constraint-guide-new gtk-constraint-guide-get-max-size
	  gtk-constraint-guide-get-min-size gtk-constraint-guide-get-name
	  gtk-constraint-guide-get-nat-size gtk-constraint-guide-get-strength
	  gtk-constraint-guide-set-max-size gtk-constraint-guide-set-min-size
	  gtk-constraint-guide-set-name gtk-constraint-guide-set-nat-size
	  gtk-constraint-guide-set-strength
	  gtk-constraint-layout-new gtk-constraint-layout-add-constraint
	  gtk-constraint-layout-add-constraints-from-description
	  gtk-constraint-layout-add-constraints-from-descriptionv
	  gtk-constraint-layout-add-guide
	  gtk-constraint-layout-observe-constraints
	  gtk-constraint-layout-observe-guides
	  gtk-constraint-layout-remove-all-constraints
	  gtk-constraint-layout-remove-constraint
	  gtk-constraint-layout-remove-guide
	  gtk-css-provider-new gtk-css-provider-load-from-data
	  gtk-css-provider-load-from-file gtk-css-provider-load-from-path
	  gtk-css-provider-load-from-resource gtk-css-provider-load-named
	  gtk-css-provider-to-string
	  gtk-custom-filter-new gtk-custom-filter-set-filter-func
	  gtk-custom-layout-new
	  gtk-custom-sorter-new gtk-custom-sorter-set-sort-func
	  gtk-dialog-new gtk-dialog-new-with-buttons
	  gtk-dialog-add-action-widget gtk-dialog-add-button
	  gtk-dialog-add-buttons gtk-dialog-get-content-area
	  gtk-dialog-get-header-bar gtk-dialog-get-response-for-widget
	  gtk-dialog-get-widget-for-response gtk-dialog-response
	  gtk-dialog-set-default-response gtk-dialog-set-response-sensitive
	  gtk-directory-list-new gtk-directory-list-get-attributes
	  gtk-directory-list-get-error gtk-directory-list-get-file
	  gtk-directory-list-get-io-priority gtk-directory-list-get-monitored
	  gtk-directory-list-is-loading gtk-directory-list-set-attributes
	  gtk-directory-list-set-file gtk-directory-list-set-io-priority
	  gtk-directory-list-set-monitored
	  gtk-drag-icon-create-widget-for-value gtk-drag-icon-get-for-drag
	  gtk-drag-icon-set-from-paintable gtk-drag-icon-get-child
	  gtk-drag-icon-set-child
	  gtk-drag-source-new gtk-drag-source-drag-cancel
	  gtk-drag-source-get-actions gtk-drag-source-get-content
	  gtk-drag-source-get-drag gtk-drag-source-set-actions
	  gtk-drag-source-set-content gtk-drag-source-set-icon
	  gtk-drawing-area-new gtk-drawing-area-get-content-height
	  gtk-drawing-area-get-content-width gtk-drawing-area-set-content-height
	  gtk-drawing-area-set-content-width gtk-drawing-area-set-draw-func
	  gtk-drop-controller-motion-new
	  gtk-drop-controller-motion-contains-pointer
	  gtk-drop-controller-motion-get-drop
	  gtk-drop-controller-motion-is-pointer
	  gtk-drop-down-new gtk-drop-down-new-from-strings
	  gtk-drop-down-get-enable-search gtk-drop-down-get-expression
	  gtk-drop-down-get-factory gtk-drop-down-get-list-factory
	  gtk-drop-down-get-model gtk-drop-down-get-selected
	  gtk-drop-down-get-selected-item gtk-drop-down-set-enable-search
	  gtk-drop-down-set-expression gtk-drop-down-set-factory
	  gtk-drop-down-set-list-factory gtk-drop-down-set-model
	  gtk-drop-down-set-selected
	  gtk-drop-target-new gtk-drop-target-get-actions
	  gtk-drop-target-get-current-drop gtk-drop-target-get-drop
	  gtk-drop-target-get-formats gtk-drop-target-get-gtypes
	  gtk-drop-target-get-preload gtk-drop-target-get-value
	  gtk-drop-target-reject gtk-drop-target-set-actions
	  gtk-drop-target-set-gtypes gtk-drop-target-set-preload
	  gtk-drop-target-async-new gtk-drop-target-async-get-actions
	  gtk-drop-target-async-get-formats gtk-drop-target-async-reject-drop
	  gtk-drop-target-async-set-actions gtk-drop-target-async-set-formats
	  gtk-editable-label-new gtk-editable-label-get-editing
	  gtk-editable-label-start-editing gtk-editable-label-stop-editing
	  gtk-emoji-chooser-new
	  gtk-entry-new gtk-entry-new-with-buffer
	  gtk-entry-get-activates-default gtk-entry-get-alignment
	  gtk-entry-get-attributes gtk-entry-get-buffer
	  gtk-entry-get-completion gtk-entry-get-current-icon-drag-source
	  gtk-entry-get-extra-menu gtk-entry-get-has-frame
	  gtk-entry-get-icon-activatable gtk-entry-get-icon-area
	  gtk-entry-get-icon-at-pos gtk-entry-get-icon-gicon
	  gtk-entry-get-icon-name gtk-entry-get-icon-paintable
	  gtk-entry-get-icon-sensitive gtk-entry-get-icon-storage-type
	  gtk-entry-get-icon-tooltip-markup gtk-entry-get-icon-tooltip-text
	  gtk-entry-get-input-hints gtk-entry-get-input-purpose
	  gtk-entry-get-invisible-char gtk-entry-get-max-length
	  gtk-entry-get-overwrite-mode gtk-entry-get-placeholder-text
	  gtk-entry-get-progress-fraction gtk-entry-get-progress-pulse-step
	  gtk-entry-get-tabs gtk-entry-get-text-length
	  gtk-entry-get-visibility gtk-entry-grab-focus-without-selecting
	  gtk-entry-progress-pulse gtk-entry-reset-im-context
	  gtk-entry-set-activates-default gtk-entry-set-alignment
	  gtk-entry-set-attributes gtk-entry-set-buffer
	  gtk-entry-set-completion gtk-entry-set-extra-menu
	  gtk-entry-set-has-frame gtk-entry-set-icon-activatable
	  gtk-entry-set-icon-drag-source gtk-entry-set-icon-from-gicon
	  gtk-entry-set-icon-from-icon-name gtk-entry-set-icon-from-paintable
	  gtk-entry-set-icon-sensitive gtk-entry-set-icon-tooltip-markup
	  gtk-entry-set-icon-tooltip-text gtk-entry-set-input-hints
	  gtk-entry-set-input-purpose gtk-entry-set-invisible-char
	  gtk-entry-set-max-length gtk-entry-set-overwrite-mode
	  gtk-entry-set-placeholder-text gtk-entry-set-progress-fraction
	  gtk-entry-set-progress-pulse-step gtk-entry-set-tabs
	  gtk-entry-set-visibility gtk-entry-unset-invisible-char
	  gtk-entry-buffer-new gtk-entry-buffer-delete-text
	  gtk-entry-buffer-emit-deleted-text gtk-entry-buffer-emit-inserted-text
	  gtk-entry-buffer-get-bytes gtk-entry-buffer-get-length
	  gtk-entry-buffer-get-max-length gtk-entry-buffer-get-text
	  gtk-entry-buffer-insert-text gtk-entry-buffer-set-max-length
	  gtk-entry-buffer-set-text
	  gtk-entry-completion-new gtk-entry-completion-new-with-area
	  gtk-entry-completion-complete gtk-entry-completion-compute-prefix
	  gtk-entry-completion-get-completion-prefix
	  gtk-entry-completion-get-entry
	  gtk-entry-completion-get-inline-completion
	  gtk-entry-completion-get-inline-selection
	  gtk-entry-completion-get-minimum-key-length
	  gtk-entry-completion-get-model
	  gtk-entry-completion-get-popup-completion
	  gtk-entry-completion-get-popup-set-width
	  gtk-entry-completion-get-popup-single-match
	  gtk-entry-completion-get-text-column
	  gtk-entry-completion-insert-prefix
	  gtk-entry-completion-set-inline-completion
	  gtk-entry-completion-set-inline-selection
	  gtk-entry-completion-set-match-func
	  gtk-entry-completion-set-minimum-key-length
	  gtk-entry-completion-set-model
	  gtk-entry-completion-set-popup-completion
	  gtk-entry-completion-set-popup-set-width
	  gtk-entry-completion-set-popup-single-match
	  gtk-entry-completion-set-text-column
	  gtk-event-controller-get-current-event
	  gtk-event-controller-get-current-event-device
	  gtk-event-controller-get-current-event-state
	  gtk-event-controller-get-current-event-time
	  gtk-event-controller-get-name
	  gtk-event-controller-get-propagation-limit
	  gtk-event-controller-get-propagation-phase
	  gtk-event-controller-get-widget gtk-event-controller-reset
	  gtk-event-controller-set-name
	  gtk-event-controller-set-propagation-limit
	  gtk-event-controller-set-propagation-phase
	  gtk-event-controller-focus-new
	  gtk-event-controller-focus-contains-focus
	  gtk-event-controller-focus-is-focus
	  gtk-event-controller-key-new gtk-event-controller-key-forward
	  gtk-event-controller-key-get-group
	  gtk-event-controller-key-get-im-context
	  gtk-event-controller-key-set-im-context
	  gtk-event-controller-legacy-new
	  gtk-event-controller-motion-new
	  gtk-event-controller-motion-contains-pointer
	  gtk-event-controller-motion-is-pointer
	  gtk-event-controller-scroll-new gtk-event-controller-scroll-get-flags
	  gtk-event-controller-scroll-set-flags
	  gtk-every-filter-new
	  gtk-expander-new gtk-expander-new-with-mnemonic
	  gtk-expander-get-child gtk-expander-get-expanded
	  gtk-expander-get-label gtk-expander-get-label-widget
	  gtk-expander-get-resize-toplevel gtk-expander-get-use-markup
	  gtk-expander-get-use-underline gtk-expander-set-child
	  gtk-expander-set-expanded gtk-expander-set-label
	  gtk-expander-set-label-widget gtk-expander-set-resize-toplevel
	  gtk-expander-set-use-markup gtk-expander-set-use-underline
	  gtk-expression-bind gtk-expression-evaluate
	  gtk-expression-get-value-type gtk-expression-is-static
	  gtk-expression-ref gtk-expression-unref gtk-expression-watch
	  gtk-file-chooser-dialog-new
	  gtk-file-chooser-native-new
	  gtk-file-chooser-native-get-accept-label
	  gtk-file-chooser-native-get-cancel-label
	  gtk-file-chooser-native-set-accept-label
	  gtk-file-chooser-native-set-cancel-label
	  gtk-file-chooser-widget-new
	  gtk-file-filter-new gtk-file-filter-new-from-gvariant
	  gtk-file-filter-add-mime-type gtk-file-filter-add-pattern
	  gtk-file-filter-add-pixbuf-formats gtk-file-filter-add-suffix
	  gtk-file-filter-get-attributes gtk-file-filter-get-name
	  gtk-file-filter-set-name gtk-file-filter-to-gvariant
	  gtk-filter-changed gtk-filter-get-strictness gtk-filter-match
	  gtk-filter-list-model-new gtk-filter-list-model-get-filter
	  gtk-filter-list-model-get-incremental
	  gtk-filter-list-model-get-model gtk-filter-list-model-get-pending
	  gtk-filter-list-model-set-filter gtk-filter-list-model-set-incremental
	  gtk-filter-list-model-set-model
	  gtk-fixed-new gtk-fixed-get-child-position
	  gtk-fixed-get-child-transform gtk-fixed-move gtk-fixed-put
	  gtk-fixed-remove gtk-fixed-set-child-transform
	  gtk-fixed-layout-new
	  gtk-fixed-layout-child-get-transform
	  gtk-fixed-layout-child-set-transform
	  gtk-flatten-list-model-new gtk-flatten-list-model-get-model
	  gtk-flatten-list-model-get-model-for-item
	  gtk-flatten-list-model-set-model
	  gtk-flow-box-new gtk-flow-box-bind-model
	  gtk-flow-box-get-activate-on-single-click
	  gtk-flow-box-get-child-at-index gtk-flow-box-get-child-at-pos
	  gtk-flow-box-get-column-spacing gtk-flow-box-get-homogeneous
	  gtk-flow-box-get-max-children-per-line
	  gtk-flow-box-get-min-children-per-line
	  gtk-flow-box-get-row-spacing gtk-flow-box-get-selected-children
	  gtk-flow-box-get-selection-mode gtk-flow-box-insert
	  gtk-flow-box-invalidate-filter gtk-flow-box-invalidate-sort
	  gtk-flow-box-remove gtk-flow-box-select-all
	  gtk-flow-box-select-all gtk-flow-box-select-child
	  gtk-flow-box-selected-foreach
	  gtk-flow-box-set-activate-on-single-click
	  gtk-flow-box-set-column-spacing gtk-flow-box-set-filter-func
	  gtk-flow-box-set-hadjustment gtk-flow-box-set-homogeneous
	  gtk-flow-box-set-max-children-per-line
	  gtk-flow-box-set-min-children-per-line
	  gtk-flow-box-set-row-spacing gtk-flow-box-set-selection-mode
	  gtk-flow-box-set-sort-func gtk-flow-box-set-vadjustment
	  gtk-flow-box-unselect-all gtk-flow-box-unselect-child
	  gtk-flow-box-child-new gtk-flow-box-child-changed
	  gtk-flow-box-child-get-index gtk-flow-box-child-is-selected
	  gtk-flow-box-child-set-child
	  gtk-font-button-new gtk-font-button-new-with-font
	  gtk-font-button-get-modal gtk-font-button-get-title
	  gtk-font-button-get-use-font gtk-font-button-get-use-size
	  gtk-font-button-set-modal gtk-font-button-set-title
	  gtk-font-button-set-use-font gtk-font-button-set-use-size
	  gtk-font-chooser-dialog-new
	  gtk-font-chooser-widget-new
	  gtk-frame-new gtk-frame-get-child gtk-frame-get-label
	  gtk-frame-get-label-align gtk-frame-get-label-widget
	  gtk-frame-set-child gtk-frame-set-label gtk-frame-set-label-align
	  gtk-frame-set-label-widget
	  gtk-gesture-get-bounding-box gtk-gesture-get-bounding-box-center
	  gtk-gesture-get-device gtk-gesture-get-group
	  gtk-gesture-get-last-event gtk-gesture-get-last-updated-sequence
	  gtk-gesture-get-point gtk-gesture-get-sequence-state
	  gtk-gesture-get-sequences gtk-gesture-group
	  gtk-gesture-handles-sequence gtk-gesture-is-active
	  gtk-gesture-is-grouped-with gtk-gesture-is-recognized
	  gtk-gesture-set-sequence-state gtk-gesture-set-state
	  gtk-gesture-ungroup
	  gtk-gesture-click-new
	  gtk-gesture-drag-new gtk-gesture-drag-get-offset
	  gtk-gesture-drag-get-start-point
	  gtk-gesture-long-press-new
	  gtk-gesture-long-press-get-delay-factor
	  gtk-gesture-long-press-set-delay-factor
	  gtk-gesture-pan-new gtk-gesture-pan-get-orientation
	  gtk-gesture-pan-set-orientation
	  gtk-gesture-rotate-new gtk-gesture-rotate-get-angle-delta
	  gtk-gesture-single-get-button gtk-gesture-single-get-current-button
	  gtk-gesture-single-get-current-sequence
	  gtk-gesture-single-get-exclusive gtk-gesture-single-get-touch-only
	  gtk-gesture-single-set-button gtk-gesture-single-set-exclusive
	  gtk-gesture-single-set-touch-only 
	  gtk-gesture-stylus-new gtk-gesture-stylus-get-axes
	  gtk-gesture-stylus-get-axis gtk-gesture-stylus-get-backlog
	  gtk-gesture-stylus-get-device-tool
	  gtk-gesture-swipe-new gtk-gesture-swipe-get-velocity
	  gtk-gesture-zoom-new gtk-gesture-zoom-get-scale-delta
	  gtk-gl-area-new gtk-gl-area-attach-buffers
	  gtk-gl-area-get-auto-render gtk-gl-area-get-context
	  gtk-gl-area-get-error gtk-gl-area-get-has-depth-buffer
	  gtk-gl-area-get-has-stencil-buffer gtk-gl-area-get-required-version
	  gtk-gl-area-get-use-es gtk-gl-area-make-current
	  gtk-gl-area-queue-render gtk-gl-area-set-auto-render
	  gtk-gl-area-set-error gtk-gl-area-set-has-depth-buffer
	  gtk-gl-area-set-has-stencil-buffer gtk-gl-area-set-required-version
	  gtk-gl-area-set-use-es
	  gtk-grid-new gtk-grid-attach gtk-grid-attach-next-to
	  gtk-grid-get-baseline-row gtk-grid-get-child-at
	  gtk-grid-get-column-homogeneous gtk-grid-get-column-spacing
	  gtk-grid-get-row-baseline-position gtk-grid-get-row-homogeneous
	  gtk-grid-get-row-spacing gtk-grid-insert-column
	  gtk-grid-insert-next-to gtk-grid-insert-row gtk-grid-query-child
	  gtk-grid-remove gtk-grid-remove-column gtk-grid-remove-row
	  gtk-grid-set-baseline-row gtk-grid-set-column-homogeneous
	  gtk-grid-set-column-spacing gtk-grid-set-row-baseline-position
	  gtk-grid-set-row-homogeneous gtk-grid-set-row-spacing
	  gtk-grid-layout-new gtk-grid-layout-get-baseline-row
	  gtk-grid-layout-get-column-homogeneous
	  gtk-grid-layout-get-column-spacing
	  gtk-grid-layout-get-row-baseline-position
	  gtk-grid-layout-get-row-homogeneous gtk-grid-layout-get-row-spacing
	  gtk-grid-layout-set-baseline-row
	  gtk-grid-layout-set-column-homogeneous
	  gtk-grid-layout-set-column-spacing
	  gtk-grid-layout-set-row-baseline-position
	  gtk-grid-layout-set-row-homogeneous gtk-grid-layout-set-row-spacing
	  gtk-grid-layout-child-get-column gtk-grid-layout-child-get-column-span
	  gtk-grid-layout-child-get-row gtk-grid-layout-child-get-row-span
	  gtk-grid-layout-child-set-column gtk-grid-layout-child-set-column-span
	  gtk-grid-layout-child-set-row gtk-grid-layout-child-set-row-span
	  gtk-grid-view-new
	  gtk-grid-view-get-enable-rubberband gtk-grid-view-get-factory
	  gtk-grid-view-get-max-columns gtk-grid-view-get-min-columns
	  gtk-grid-view-get-model gtk-grid-view-get-single-click-activate
	  gtk-grid-view-set-enable-rubberband gtk-grid-view-set-factory
	  gtk-grid-view-set-max-columns gtk-grid-view-set-min-columns
	  gtk-grid-view-set-model gtk-grid-view-set-single-click-activate
	  gtk-header-bar-new gtk-header-bar-get-decoration-layout
	  gtk-header-bar-get-show-title-buttons
	  gtk-header-bar-get-title-widget gtk-header-bar-pack-end
	  gtk-header-bar-pack-start gtk-header-bar-remove
	  gtk-header-bar-set-decoration-layout
	  gtk-header-bar-set-show-title-buttons
	  gtk-header-bar-set-title-widget
	  gtk-icon-paintable-new-for-file gtk-icon-paintable-get-file
	  gtk-icon-paintable-get-icon-name gtk-icon-paintable-is-symbolic
	  gtk-icon-theme-new gtk-icon-theme-get-for-display
	  gtk-icon-theme-add-resource-path gtk-icon-theme-add-search-path
	  gtk-icon-theme-get-display gtk-icon-theme-get-icon-names
	  gtk-icon-theme-get-icon-sizes gtk-icon-theme-get-resource-path
	  gtk-icon-theme-get-search-path gtk-icon-theme-get-theme-name
	  gtk-icon-theme-has-gicon gtk-icon-theme-has-icon
	  gtk-icon-theme-lookup-by-gicon gtk-icon-theme-lookup-icon
	  gtk-icon-theme-set-resource-path gtk-icon-theme-set-search-path
	  gtk-icon-theme-set-theme-name 
	  gtk-icon-view-new gtk-icon-view-new-with-area
	  gtk-icon-view-new-with-model gtk-icon-view-create-drag-icon
	  gtk-icon-view-enable-model-drag-dest
	  gtk-icon-view-enable-model-drag-source
	  gtk-icon-view-get-activate-on-single-click
	  gtk-icon-view-get-cell-rect gtk-icon-view-get-column-spacing
	  gtk-icon-view-get-columns gtk-icon-view-get-cursor
	  gtk-icon-view-get-dest-item-at-pos gtk-icon-view-get-drag-dest-item
	  gtk-icon-view-get-item-at-pos gtk-icon-view-get-item-column
	  gtk-icon-view-get-item-orientation gtk-icon-view-get-item-padding
	  gtk-icon-view-get-item-row gtk-icon-view-get-item-width
	  gtk-icon-view-get-margin gtk-icon-view-get-markup-column
	  gtk-icon-view-get-model gtk-icon-view-get-path-at-pos
	  gtk-icon-view-get-pixbuf-column gtk-icon-view-get-reorderable
	  gtk-icon-view-get-row-spacing gtk-icon-view-get-selected-items
	  gtk-icon-view-get-selection-mode gtk-icon-view-get-spacing
	  gtk-icon-view-get-text-column gtk-icon-view-get-tooltip-column
	  gtk-icon-view-get-tooltip-context gtk-icon-view-get-visible-range
	  gtk-icon-view-item-activated gtk-icon-view-path-is-selected
	  gtk-icon-view-scroll-to-path gtk-icon-view-select-all
	  gtk-icon-view-select-path gtk-icon-view-selected-foreach
	  gtk-icon-view-set-activate-on-single-click
	  gtk-icon-view-set-column-spacing gtk-icon-view-set-columns
	  gtk-icon-view-set-cursor gtk-icon-view-set-drag-dest-item
	  gtk-icon-view-set-item-orientation gtk-icon-view-set-item-padding
	  gtk-icon-view-set-item-width gtk-icon-view-set-margin
	  gtk-icon-view-set-markup-column gtk-icon-view-set-model
	  gtk-icon-view-set-pixbuf-column gtk-icon-view-set-reorderable
	  gtk-icon-view-set-row-spacing gtk-icon-view-set-selection-mode
	  gtk-icon-view-set-spacing gtk-icon-view-set-text-column
	  gtk-icon-view-set-tooltip-cell gtk-icon-view-set-tooltip-column
	  gtk-icon-view-set-tooltip-item gtk-icon-view-unselect-all
	  gtk-icon-view-unselect-path
	  gtk-icon-view-unset-model-drag-dest
	  gtk-icon-view-unset-model-drag-source
	  gtk-im-context-delete-surrounding gtk-im-context-filter-key
	  gtk-im-context-filter-keypress gtk-im-context-focus-in
	  gtk-im-context-focus-out gtk-im-context-get-preedit-string
	  gtk-im-context-get-surrounding-with-selection
	  gtk-im-context-reset gtk-im-context-set-client-widget
	  gtk-im-context-set-cursor-location
	  gtk-im-context-set-surrounding-with-selection
	  gtk-im-context-set-use-preedit
	  gtk-im-context-simple-new
	  gtk-im-context-simple-add-compose-file
	  gtk-im-multicontext-new gtk-im-multicontext-get-context-id
	  gtk-im-multicontext-set-context-id
	  gtk-info-bar-new gtk-info-bar-new-with-buttons
	  gtk-info-bar-add-action-widget gtk-info-bar-add-button
	  gtk-info-bar-add-buttons gtk-info-bar-add-child
	  gtk-info-bar-get-message-type gtk-info-bar-get-revealed
	  gtk-info-bar-get-show-close-button gtk-info-bar-remove-action-widget
	  gtk-info-bar-remove-child gtk-info-bar-response
	  gtk-info-bar-set-default-response gtk-info-bar-set-message-type
	  gtk-info-bar-set-response-sensitive gtk-info-bar-set-revealed
	  gtk-info-bar-set-show-close-button
	  gtk-keyval-trigger-new gtk-keyval-trigger-get-keyval
	  gtk-keyval-trigger-get-modifiers
	  gtk-label-new gtk-label-new-with-mnemonic gtk-label-get-attributes
	  gtk-label-get-current-uri gtk-label-get-ellipsize
	  gtk-label-get-extra-menu gtk-label-get-justify gtk-label-get-label
	  gtk-label-get-layout gtk-label-get-layout-offsets gtk-label-get-lines
	  gtk-label-get-max-width-chars gtk-label-get-mnemonic-keyval
	  gtk-label-get-mnemonic-widget gtk-label-get-selectable
	  gtk-label-get-selection-bounds gtk-label-get-single-line-mode
	  gtk-label-get-text gtk-label-get-use-markup
	  gtk-label-get-use-underline gtk-label-get-width-chars
	  gtk-label-get-wrap gtk-label-get-wrap-mode gtk-label-get-xalign
	  gtk-label-get-yalign gtk-label-select-region gtk-label-set-attributes
	  gtk-label-set-ellipsize gtk-label-set-extra-menu
	  gtk-label-set-justify gtk-label-set-label gtk-label-set-lines
	  gtk-label-set-markup gtk-label-set-markup-with-mnemonic
	  gtk-label-set-max-width-chars gtk-label-set-mnemonic-widget
	  gtk-label-set-selectable gtk-label-set-single-line-mode
	  gtk-label-set-text gtk-label-set-text-with-mnemonic
	  gtk-label-set-use-markup gtk-label-set-use-underline
	  gtk-label-set-width-chars gtk-label-set-wrap gtk-label-set-wrap-mode
	  gtk-label-set-xalign gtk-label-set-yalign
	  gtk-layout-child-get-child-widget
	  gtk-layout-child-get-layout-manager
	  gtk-layout-manager-allocate gtk-layout-manager-get-layout-child
	  gtk-layout-manager-get-request-mode gtk-layout-manager-get-widget
	  gtk-layout-manager-measure
	  gtk-level-bar-new gtk-level-bar-new-for-interval
	  gtk-level-bar-add-offset-value gtk-level-bar-get-inverted
	  gtk-level-bar-get-max-value gtk-level-bar-get-min-value
	  gtk-level-bar-get-mode gtk-level-bar-get-offset-value
	  gtk-level-bar-get-value gtk-level-bar-remove-offset-value
	  gtk-level-bar-set-inverted gtk-level-bar-set-max-value
	  gtk-level-bar-set-min-value gtk-level-bar-set-mode
	  gtk-level-bar-set-value
	  gtk-link-button-new gtk-link-button-new-with-label
	  gtk-link-button-get-uri gtk-link-button-get-visited
	  gtk-link-button-set-uri gtk-link-button-set-visited
	  gtk-list-box-new gtk-list-box-append gtk-list-box-bind-model
	  gtk-list-box-drag-highlight-row gtk-list-box-drag-unhighlight-row
	  gtk-list-box-get-activate-on-single-click gtk-list-box-get-adjustment
	  gtk-list-box-get-row-at-index gtk-list-box-get-row-at-y
	  gtk-list-box-get-selected-row gtk-list-box-get-selected-rows
	  gtk-list-box-get-selection-mode gtk-list-box-get-show-separators
	  gtk-list-box-insert gtk-list-box-invalidate-filter
	  gtk-list-box-invalidate-headers gtk-list-box-invalidate-sort
	  gtk-list-box-prepend gtk-list-box-remove gtk-list-box-select-all
	  gtk-list-box-select-row gtk-list-box-selected-foreach
	  gtk-list-box-set-activate-on-single-click
	  gtk-list-box-set-adjustment gtk-list-box-set-filter-func
	  gtk-list-box-set-header-func gtk-list-box-set-placeholder
	  gtk-list-box-set-selection-mode gtk-list-box-set-show-separators
	  gtk-list-box-set-sort-func gtk-list-box-unselect-all
	  gtk-list-box-unselect-row 
	  gtk-list-box-row-new gtk-list-box-row-changed
	  gtk-list-box-row-get-activatable gtk-list-box-row-get-child
	  gtk-list-box-row-get-header gtk-list-box-row-get-index
	  gtk-list-box-row-get-selectable gtk-list-box-row-is-selected
	  gtk-list-box-row-set-activatable gtk-list-box-row-set-child
	  gtk-list-box-row-set-header gtk-list-box-row-set-selectable
	  gtk-list-item-get-activatable gtk-list-item-get-child
	  gtk-list-item-get-item gtk-list-item-get-position
	  gtk-list-item-get-selectable gtk-list-item-get-selected
	  gtk-list-item-set-activatable gtk-list-item-set-child
	  gtk-list-item-set-selectable
	  gtk-list-store-new gtk-list-store-newv gtk-list-store-append
	  gtk-list-store-clear gtk-list-store-insert gtk-list-store-insert-after
	  gtk-list-store-insert-before gtk-list-store-insert-with-values
	  gtk-list-store-insert-with-valuesv gtk-list-store-iter-is-valid
	  gtk-list-store-move-after gtk-list-store-move-before
	  gtk-list-store-prepend gtk-list-store-remove gtk-list-store-reorder
	  gtk-list-store-set gtk-list-store-set-column-types
	  gtk-list-store-set-valist gtk-list-store-set-value
	  gtk-list-store-set-valuesv gtk-list-store-swap
	  gtk-list-view-new gtk-list-view-get-enable-rubberband
	  gtk-list-view-get-factory gtk-list-view-get-model
	  gtk-list-view-get-show-separators
	  gtk-list-view-get-single-click-activate
	  gtk-list-view-set-enable-rubberband gtk-list-view-set-factory
	  gtk-list-view-set-model gtk-list-view-set-show-separators
	  gtk-list-view-set-single-click-activate
	  gtk-lock-button-new gtk-lock-button-get-permission
	  gtk-lock-button-set-permission
	  gtk-map-list-model-new gtk-map-list-model-get-model
	  gtk-map-list-model-has-map gtk-map-list-model-set-map-func
	  gtk-map-list-model-set-model
	  gtk-media-controls-new gtk-media-controls-get-media-stream
	  gtk-media-controls-set-media-stream
	  gtk-media-file-new gtk-media-file-new-for-file
	  gtk-media-file-new-for-filename gtk-media-file-new-for-input-stream
	  gtk-media-file-new-for-resource gtk-media-file-clear
	  gtk-media-file-get-file gtk-media-file-get-input-stream
	  gtk-media-file-set-file gtk-media-file-set-filename
	  gtk-media-file-set-input-stream gtk-media-file-set-resource
	  gtk-media-stream-error gtk-media-stream-error-valist
	  gtk-media-stream-gerror gtk-media-stream-get-duration
	  gtk-media-stream-get-ended gtk-media-stream-get-error
	  gtk-media-stream-get-loop gtk-media-stream-get-muted
	  gtk-media-stream-get-playing gtk-media-stream-get-timestamp
	  gtk-media-stream-get-volume gtk-media-stream-has-video
	  gtk-media-stream-is-prepared gtk-media-stream-is-seekable
	  gtk-media-stream-is-seeking gtk-media-stream-pause
	  gtk-media-stream-play gtk-media-stream-realize gtk-media-stream-seek
	  gtk-media-stream-seek-failed gtk-media-stream-seek-success
	  gtk-media-stream-set-loop gtk-media-stream-set-muted
	  gtk-media-stream-set-playing gtk-media-stream-set-volume
	  gtk-media-stream-ended gtk-media-stream-prepared
	  gtk-media-stream-unprepared gtk-media-stream-unrealize
	  gtk-media-stream-update
	  gtk-menu-button-new gtk-menu-button-get-always-show-arrow
	  gtk-menu-button-get-direction
	  gtk-menu-button-get-has-frame gtk-menu-button-get-icon-name
	  gtk-menu-button-get-label gtk-menu-button-get-menu-model
	  gtk-menu-button-get-popover gtk-menu-button-get-primary
	  gtk-menu-button-get-use-underline gtk-menu-button-popdown
	  gtk-menu-button-popup gtk-menu-button-set-always-show-arrow
	  gtk-menu-button-set-create-popup-func
	  gtk-menu-button-set-direction gtk-menu-button-set-has-frame
	  gtk-menu-button-set-icon-name gtk-menu-button-set-label
	  gtk-menu-button-set-menu-model gtk-menu-button-set-popover
	  gtk-menu-button-set-primary gtk-menu-button-set-use-underline
	  gtk-message-dialog-new gtk-message-dialog-new-with-markup
	  gtk-message-dialog-format-secondary-markup
	  gtk-message-dialog-format-secondary-text
	  gtk-message-dialog-get-message-area
	  gtk-message-dialog-set-markup
	  gtk-mnemonic-action-get
	  gtk-mnemonic-trigger-new gtk-mnemonic-trigger-get-keyval
	  gtk-mount-operation-new gtk-mount-operation-get-display
	  gtk-mount-operation-get-parent gtk-mount-operation-is-showing
	  gtk-mount-operation-set-display gtk-mount-operation-set-parent
	  gtk-multi-filter-append gtk-multi-filter-remove
	  gtk-multi-selection-new gtk-multi-selection-get-model
	  gtk-multi-selection-set-model
	  gtk-named-action-new gtk-named-action-get-action-name
	  gtk-native-dialog-destroy gtk-native-dialog-get-modal
	  gtk-native-dialog-get-title gtk-native-dialog-get-transient-for
	  gtk-native-dialog-get-visible gtk-native-dialog-hide
	  gtk-native-dialog-set-modal gtk-native-dialog-set-title
	  gtk-native-dialog-set-transient-for gtk-native-dialog-show
	  gtk-never-trigger-get
	  gtk-no-selection-new gtk-no-selection-get-model
	  gtk-no-selection-set-model
	  gtk-notebook-new gtk-notebook-append-page
	  gtk-notebook-append-page-menu gtk-notebook-detach-tab
	  gtk-notebook-get-action-widget gtk-notebook-get-current-page
	  gtk-notebook-get-group-name gtk-notebook-get-menu-label
	  gtk-notebook-get-menu-label-text gtk-notebook-get-n-pages
	  gtk-notebook-get-nth-page gtk-notebook-get-page
	  gtk-notebook-get-pages gtk-notebook-get-scrollable
	  gtk-notebook-get-show-border gtk-notebook-get-show-tabs
	  gtk-notebook-get-tab-detachable gtk-notebook-get-tab-label
	  gtk-notebook-get-tab-label-text gtk-notebook-get-tab-pos
	  gtk-notebook-get-tab-reorderable gtk-notebook-insert-page
	  gtk-notebook-insert-page-menu gtk-notebook-next-page
	  gtk-notebook-page-num gtk-notebook-popup-disable
	  gtk-notebook-popup-enable gtk-notebook-prepend-page
	  gtk-notebook-prepend-page-menu gtk-notebook-prev-page
	  gtk-notebook-remove-page gtk-notebook-reorder-child
	  gtk-notebook-set-action-widget gtk-notebook-set-current-page
	  gtk-notebook-set-group-name gtk-notebook-set-menu-label
	  gtk-notebook-set-menu-label-text gtk-notebook-set-scrollable
	  gtk-notebook-set-show-border gtk-notebook-set-show-tabs
	  gtk-notebook-set-tab-detachable gtk-notebook-set-tab-label
	  gtk-notebook-set-tab-label-text gtk-notebook-set-tab-pos
	  gtk-notebook-set-tab-reorderable
	  gtk-notebook-page-get-child
	  gtk-nothing-action-get
	  gtk-numeric-sorter-new gtk-numeric-sorter-get-expression
	  gtk-numeric-sorter-get-sort-order gtk-numeric-sorter-set-expression
	  gtk-numeric-sorter-set-sort-order
	  gtk-object-expression-new gtk-object-expression-get-object
	  gtk-overlay-new gtk-overlay-add-overlay gtk-overlay-get-child
	  gtk-overlay-get-clip-overlay gtk-overlay-get-measure-overlay
	  gtk-overlay-remove-overlay gtk-overlay-set-child
	  gtk-overlay-set-clip-overlay gtk-overlay-set-measure-overlay
	  gtk-overlay-layout-new
	  gtk-overlay-layout-child-get-clip-overlay
	  gtk-overlay-layout-child-get-measure
	  gtk-overlay-layout-child-set-clip-overlay
	  gtk-overlay-layout-child-set-measure
	  gtk-pad-controller-new gtk-pad-controller-set-action
	  gtk-pad-controller-set-action-entries
	  gtk-page-setup-new gtk-page-setup-new-from-file
	  gtk-page-setup-new-from-gvariant gtk-page-setup-new-from-key-file
	  gtk-page-setup-copy gtk-page-setup-get-bottom-margin
	  gtk-page-setup-get-left-margin gtk-page-setup-get-orientation
	  gtk-page-setup-get-page-height gtk-page-setup-get-page-width
	  gtk-page-setup-get-paper-height gtk-page-setup-get-paper-size
	  gtk-page-setup-get-paper-width gtk-page-setup-get-right-margin
	  gtk-page-setup-get-top-margin gtk-page-setup-load-file
	  gtk-page-setup-load-key-file gtk-page-setup-set-bottom-margin
	  gtk-page-setup-set-left-margin gtk-page-setup-set-orientation
	  gtk-page-setup-set-paper-size
	  gtk-page-setup-set-paper-size-and-default-margins
	  gtk-page-setup-set-right-margin gtk-page-setup-set-top-margin
	  gtk-page-setup-to-file gtk-page-setup-to-gvariant
	  gtk-page-setup-to-key-file
	  gtk-page-setup-unix-dialog-new
	  gtk-page-setup-unix-dialog-get-page-setup
	  gtk-page-setup-unix-dialog-get-print-settings
	  gtk-page-setup-unix-dialog-set-page-setup
	  gtk-page-setup-unix-dialog-set-print-settings
	  gtk-paned-new gtk-paned-get-end-child gtk-paned-get-position
	  gtk-paned-get-resize-end-child gtk-paned-get-resize-start-child
	  gtk-paned-get-shrink-end-child gtk-paned-get-shrink-start-child
	  gtk-paned-get-start-child gtk-paned-get-wide-handle
	  gtk-paned-set-end-child gtk-paned-set-position
	  gtk-paned-set-resize-end-child gtk-paned-set-resize-start-child
	  gtk-paned-set-shrink-end-child gtk-paned-set-shrink-start-child
	  gtk-paned-set-start-child gtk-paned-set-wide-handle
	  gtk-password-entry-new gtk-password-entry-get-extra-menu
	  gtk-password-entry-get-show-peek-icon
	  gtk-password-entry-set-extra-menu
	  gtk-password-entry-set-show-peek-icon
	  gtk-password-entry-buffer-new
	  gtk-picture-new gtk-picture-new-for-file gtk-picture-new-for-filename
	  gtk-picture-new-for-paintable gtk-picture-new-for-pixbuf
	  gtk-picture-new-for-resource
	  gtk-picture-get-alternative-text gtk-picture-get-can-shrink
	  gtk-picture-get-file gtk-picture-get-keep-aspect-ratio
	  gtk-picture-get-paintable gtk-picture-set-alternative-text
	  gtk-picture-set-can-shrink gtk-picture-set-file
	  gtk-picture-set-filename gtk-picture-set-keep-aspect-ratio
	  gtk-picture-set-paintable gtk-picture-set-pixbuf
	  gtk-picture-set-resource 
	  gtk-popover-new gtk-popover-get-autohide
	  gtk-popover-get-cascade-popdown gtk-popover-get-child
	  gtk-popover-get-has-arrow gtk-popover-get-mnemonics-visible
	  gtk-popover-get-offset gtk-popover-get-pointing-to
	  gtk-popover-get-position gtk-popover-popdown gtk-popover-popup
	  gtk-popover-present gtk-popover-set-autohide
	  gtk-popover-set-cascade-popdown gtk-popover-set-child
	  gtk-popover-set-default-widget gtk-popover-set-has-arrow
	  gtk-popover-set-mnemonics-visible gtk-popover-set-offset
	  gtk-popover-set-pointing-to gtk-popover-set-position
	  gtk-popover-menu-new-from-model
	  gtk-popover-menu-new-from-model-full
	  gtk-popover-menu-add-child gtk-popover-menu-get-menu-model
	  gtk-popover-menu-remove-child gtk-popover-menu-set-menu-model
	  gtk-popover-menu-bar-new-from-model
	  gtk-popover-menu-bar-add-child
	  gtk-popover-menu-bar-get-menu-model
	  gtk-popover-menu-bar-remove-child
	  gtk-popover-menu-bar-set-menu-model
	  gtk-print-context-create-pango-context 
	  gtk-print-context-create-pango-layout
	  gtk-print-context-get-cairo-context gtk-print-context-get-dpi-x
	  gtk-print-context-get-dpi-y gtk-print-context-get-hard-margins
	  gtk-print-context-get-height gtk-print-context-get-page-setup
	  gtk-print-context-get-pango-fontmap gtk-print-context-get-width
	  gtk-print-context-set-cairo-context
	  gtk-printer-new gtk-printer-accepts-pdf gtk-printer-accepts-ps
	  gtk-printer-compare gtk-printer-get-backend
	  gtk-printer-get-capabilities gtk-printer-get-default-page-size
	  gtk-printer-get-description gtk-printer-get-hard-margins
	  gtk-printer-get-hard-margins-for-paper-size
	  gtk-printer-get-icon-name gtk-printer-get-job-count
	  gtk-printer-get-location gtk-printer-get-name
	  gtk-printer-get-state-message gtk-printer-has-details
	  gtk-printer-is-accepting-jobs gtk-printer-is-active
	  gtk-printer-is-default gtk-printer-is-paused gtk-printer-is-virtual
	  gtk-printer-list-papers gtk-printer-request-details
	  gtk-print-job-new gtk-print-job-get-collate gtk-print-job-get-n-up
	  gtk-print-job-get-n-up-layout gtk-print-job-get-num-copies
	  gtk-print-job-get-page-ranges gtk-print-job-get-page-set
	  gtk-print-job-get-pages gtk-print-job-get-printer
	  gtk-print-job-get-reverse gtk-print-job-get-rotate
	  gtk-print-job-get-scale gtk-print-job-get-settings
	  gtk-print-job-get-status gtk-print-job-get-surface
	  gtk-print-job-get-title gtk-print-job-get-track-print-status
	  gtk-print-job-send gtk-print-job-set-collate gtk-print-job-set-n-up
	  gtk-print-job-set-n-up-layout gtk-print-job-set-num-copies
	  gtk-print-job-set-page-ranges gtk-print-job-set-page-set
	  gtk-print-job-set-pages gtk-print-job-set-reverse
	  gtk-print-job-set-rotate gtk-print-job-set-scale
	  gtk-print-job-set-source-fd gtk-print-job-set-source-file
	  gtk-print-job-set-track-print-status
	  gtk-print-operation-new gtk-print-operation-cancel
	  gtk-print-operation-draw-page-finish
	  gtk-print-operation-get-default-page-setup
	  gtk-print-operation-get-embed-page-setup
	  gtk-print-operation-get-error gtk-print-operation-get-has-selection
	  gtk-print-operation-get-n-pages-to-print
	  gtk-print-operation-get-print-settings
	  gtk-print-operation-get-status gtk-print-operation-get-status-string
	  gtk-print-operation-get-support-selection gtk-print-operation-is-finished
	  gtk-print-operation-run gtk-print-operation-set-allow-async
	  gtk-print-operation-set-current-page
	  gtk-print-operation-set-custom-tab-label
	  gtk-print-operation-set-default-page-setup
	  gtk-print-operation-set-defer-drawing
	  gtk-print-operation-set-embed-page-setup
	  gtk-print-operation-set-export-filename
	  gtk-print-operation-set-has-selection
	  gtk-print-operation-set-job-name
	  gtk-print-operation-set-n-pages gtk-print-operation-set-print-settings
	  gtk-print-operation-set-show-progress
	  gtk-print-operation-set-support-selection
	  gtk-print-operation-set-track-print-status
	  gtk-print-operation-set-unit gtk-print-operation-set-use-full-page
	  gtk-print-settings-new gtk-print-settings-new-from-file
	  gtk-print-settings-new-from-gvariant
	  gtk-print-settings-new-from-key-file
	  gtk-print-settings-copy gtk-print-settings-foreach
	  gtk-print-settings-get gtk-print-settings-get-bool
	  gtk-print-settings-get-collate gtk-print-settings-get-default-source
	  gtk-print-settings-get-dither gtk-print-settings-get-double
	  gtk-print-settings-get-double-with-default
	  gtk-print-settings-get-duplex
	  gtk-print-settings-get-finishings gtk-print-settings-get-int
	  gtk-print-settings-get-int-with-default gtk-print-settings-get-length
	  gtk-print-settings-get-media-type gtk-print-settings-get-n-copies
	  gtk-print-settings-get-number-up
	  gtk-print-settings-get-number-up-layout
	  gtk-print-settings-get-orientation gtk-print-settings-get-output-bin
	  gtk-print-settings-get-page-ranges gtk-print-settings-get-page-set
	  gtk-print-settings-get-paper-height gtk-print-settings-get-paper-size
	  gtk-print-settings-get-paper-width gtk-print-settings-get-print-pages
	  gtk-print-settings-get-printer gtk-print-settings-get-printer-lpi
	  gtk-print-settings-get-quality gtk-print-settings-get-resolution
	  gtk-print-settings-get-resolution-x
	  gtk-print-settings-get-resolution-y
	  gtk-print-settings-get-reverse gtk-print-settings-get-scale
	  gtk-print-settings-get-use-color gtk-print-settings-has-key
	  gtk-print-settings-load-file gtk-print-settings-load-key-file
	  gtk-print-settings-set gtk-print-settings-set-bool
	  gtk-print-settings-set-collate gtk-print-settings-set-default-source
	  gtk-print-settings-set-dither gtk-print-settings-set-double
	  gtk-print-settings-set-duplex gtk-print-settings-set-finishings
	  gtk-print-settings-set-int gtk-print-settings-set-length
	  gtk-print-settings-set-media-type gtk-print-settings-set-n-copies
	  gtk-print-settings-set-number-up
	  gtk-print-settings-set-number-up-layout
	  gtk-print-settings-set-orientation gtk-print-settings-set-output-bin
	  gtk-print-settings-set-page-ranges gtk-print-settings-set-page-set
	  gtk-print-settings-set-paper-height gtk-print-settings-set-paper-size
	  gtk-print-settings-set-paper-width gtk-print-settings-set-print-pages
	  gtk-print-settings-set-printer gtk-print-settings-set-printer-lpi
	  gtk-print-settings-set-quality gtk-print-settings-set-resolution
	  gtk-print-settings-set-resolution-xy gtk-print-settings-set-reverse
	  gtk-print-settings-set-scale gtk-print-settings-set-use-color
	  gtk-print-settings-to-file gtk-print-settings-to-gvariant
	  gtk-print-settings-to-key-file gtk-print-settings-unset
	  gtk-print-unix-dialog-new gtk-print-unix-dialog-add-custom-tab
	  gtk-print-unix-dialog-get-current-page
	  gtk-print-unix-dialog-get-embed-page-setup
	  gtk-print-unix-dialog-get-has-selection
	  gtk-print-unix-dialog-get-manual-capabilities
	  gtk-print-unix-dialog-get-page-setup
	  gtk-print-unix-dialog-get-page-setup-set
	  gtk-print-unix-dialog-get-selected-printer
	  gtk-print-unix-dialog-get-settings
	  gtk-print-unix-dialog-get-support-selection
	  gtk-print-unix-dialog-set-current-page
	  gtk-print-unix-dialog-set-embed-page-setup
	  gtk-print-unix-dialog-set-has-selection
	  gtk-print-unix-dialog-set-manual-capabilities
	  gtk-print-unix-dialog-set-page-setup
	  gtk-print-unix-dialog-set-settings
	  gtk-print-unix-dialog-set-support-selection
	  gtk-progress-bar-new gtk-progress-bar-get-ellipsize
	  gtk-progress-bar-get-fraction gtk-progress-bar-get-inverted
	  gtk-progress-bar-get-pulse-step gtk-progress-bar-get-show-text
	  gtk-progress-bar-get-text gtk-progress-bar-pulse
	  gtk-progress-bar-set-ellipsize gtk-progress-bar-set-fraction
	  gtk-progress-bar-set-inverted gtk-progress-bar-set-pulse-step
	  gtk-progress-bar-set-show-text gtk-progress-bar-set-text
	  gtk-property-expression-new gtk-property-expression-new-for-pspec
	  gtk-property-expression-get-expression
	  gtk-property-expression-get-pspec
	  gtk-range-get-adjustment gtk-range-get-fill-level
	  gtk-range-get-flippable gtk-range-get-inverted
	  gtk-range-get-range-rect gtk-range-get-restrict-to-fill-level
	  gtk-range-get-round-digits gtk-range-get-show-fill-level
	  gtk-range-get-slider-range gtk-range-get-slider-size-fixed
	  gtk-range-get-value gtk-range-set-adjustment gtk-range-set-fill-level
	  gtk-range-set-flippable gtk-range-set-increments
	  gtk-range-set-inverted gtk-range-set-range
	  gtk-range-set-restrict-to-fill-level gtk-range-set-round-digits
	  gtk-range-set-show-fill-level gtk-range-set-slider-size-fixed
	  gtk-range-set-value
	  gtk-recent-manager-new gtk-recent-manager-get-default
	  gtk-recent-manager-add-full gtk-recent-manager-add-item
	  gtk-recent-manager-get-items gtk-recent-manager-has-item
	  gtk-recent-manager-lookup-item gtk-recent-manager-move-item
	  gtk-recent-manager-purge-items gtk-recent-manager-remove-item
	  gtk-revealer-new gtk-revealer-get-child gtk-revealer-get-child-revealed
	  gtk-revealer-get-reveal-child gtk-revealer-get-transition-duration
	  gtk-revealer-get-transition-type gtk-revealer-set-child
	  gtk-revealer-set-reveal-child gtk-revealer-set-transition-duration
	  gtk-revealer-set-transition-type
	  gtk-scale-new gtk-scale-new-with-range gtk-scale-add-mark
	  gtk-scale-clear-marks gtk-scale-get-digits gtk-scale-get-draw-value
	  gtk-scale-get-has-origin gtk-scale-get-layout
	  gtk-scale-get-layout-offsets gtk-scale-get-value-pos
	  gtk-scale-set-digits gtk-scale-set-draw-value
	  gtk-scale-set-format-value-func gtk-scale-set-has-origin
	  gtk-scale-set-value-pos
	  gtk-scale-button-new gtk-scale-button-get-adjustment
	  gtk-scale-button-get-minus-button gtk-scale-button-get-plus-button
	  gtk-scale-button-get-popup gtk-scale-button-get-value
	  gtk-scale-button-set-adjustment gtk-scale-button-set-icons
	  gtk-scale-button-set-value
	  gtk-scrollbar-new gtk-scrollbar-get-adjustment
	  gtk-scrollbar-set-adjustment
	  gtk-scrolled-window-new gtk-scrolled-window-get-child
	  gtk-scrolled-window-get-hadjustment gtk-scrolled-window-get-has-frame
	  gtk-scrolled-window-get-hscrollbar
	  gtk-scrolled-window-get-kinetic-scrolling
	  gtk-scrolled-window-get-max-content-height
	  gtk-scrolled-window-get-max-content-width
	  gtk-scrolled-window-get-min-content-height
	  gtk-scrolled-window-get-min-content-width
	  gtk-scrolled-window-get-overlay-scrolling
	  gtk-scrolled-window-get-placement gtk-scrolled-window-get-policy
	  gtk-scrolled-window-get-propagate-natural-height
	  gtk-scrolled-window-get-propagate-natural-width
	  gtk-scrolled-window-get-vadjustment gtk-scrolled-window-get-vscrollbar
	  gtk-scrolled-window-set-child gtk-scrolled-window-set-hadjustment
	  gtk-scrolled-window-set-has-frame
	  gtk-scrolled-window-set-kinetic-scrolling
	  gtk-scrolled-window-set-max-content-height
	  gtk-scrolled-window-set-max-content-width
	  gtk-scrolled-window-set-min-content-height
	  gtk-scrolled-window-set-min-content-width
	  gtk-scrolled-window-set-overlay-scrolling
	  gtk-scrolled-window-set-placement gtk-scrolled-window-set-policy
	  gtk-scrolled-window-set-propagate-natural-height
	  gtk-scrolled-window-set-propagate-natural-width
	  gtk-scrolled-window-set-vadjustment
	  gtk-scrolled-window-unset-placement
	  gtk-search-bar-new gtk-search-bar-connect-entry
	  gtk-search-bar-get-child gtk-search-bar-get-key-capture-widget
	  gtk-search-bar-get-search-mode gtk-search-bar-get-show-close-button
	  gtk-search-bar-set-child gtk-search-bar-set-key-capture-widget
	  gtk-search-bar-set-search-mode gtk-search-bar-set-show-close-button
	  gtk-search-entry-new gtk-search-entry-get-key-capture-widget
	  gtk-search-entry-set-key-capture-widget
	  gtk-selection-filter-model-new gtk-selection-filter-model-get-model
	  gtk-selection-filter-model-set-model
	  gtk-separator-new
	  gtk-settings-get-default gtk-settings-get-for-display
	  gtk-settings-reset-property
	  gtk-shortcut-new gtk-shortcut-new-with-arguments
	  gtk-shortcut-get-action gtk-shortcut-get-arguments
	  gtk-shortcut-get-trigger gtk-shortcut-set-action
	  gtk-shortcut-set-arguments gtk-shortcut-set-trigger
	  gtk-shortcut-action-parse-string gtk-shortcut-action-activate
	  gtk-shortcut-action-print gtk-shortcut-action-to-string
	  gtk-shortcut-controller-new gtk-shortcut-controller-new-for-model
	  gtk-shortcut-controller-add-shortcut
	  gtk-shortcut-controller-get-mnemonics-modifiers
	  gtk-shortcut-controller-get-scope
	  gtk-shortcut-controller-remove-shortcut
	  gtk-shortcut-controller-set-mnemonics-modifiers
	  gtk-shortcut-controller-set-scope
	  gtk-shortcut-label-new gtk-shortcut-label-get-accelerator
	  gtk-shortcut-label-get-disabled-text
	  gtk-shortcut-label-set-accelerator
	  gtk-shortcut-label-set-disabled-text
	  gtk-shortcut-trigger-parse-string gtk-shortcut-trigger-compare
	  gtk-shortcut-trigger-equal gtk-shortcut-trigger-hash
	  gtk-shortcut-trigger-print gtk-shortcut-trigger-print-label
	  gtk-shortcut-trigger-to-label gtk-shortcut-trigger-to-string
	  gtk-shortcut-trigger-trigger
	  gtk-signal-action-new gtk-signal-action-get-signal-name
	  gtk-signal-list-item-factory-new
	  gtk-single-selection-new gtk-single-selection-get-autoselect
	  gtk-single-selection-get-can-unselect gtk-single-selection-get-model
	  gtk-single-selection-get-selected
	  gtk-single-selection-get-selected-item
	  gtk-single-selection-set-autoselect
	  gtk-single-selection-set-can-unselect gtk-single-selection-set-model
	  gtk-single-selection-set-selected
	  gtk-size-group-new gtk-size-group-add-widget gtk-size-group-get-mode
	  gtk-size-group-get-widgets gtk-size-group-remove-widget
	  gtk-size-group-set-mode
	  gtk-slice-list-model-new gtk-slice-list-model-get-model
	  gtk-slice-list-model-get-offset gtk-slice-list-model-get-size
	  gtk-slice-list-model-set-size gtk-slice-list-model-set-model
	  gtk-slice-list-model-set-offset gtk-slice-list-model-set-size
	  gtk-snapshot-new gtk-snapshot-append-border gtk-snapshot-append-cairo
	  gtk-snapshot-append-color gtk-snapshot-append-conic-gradient
	  gtk-snapshot-append-inset-shadow gtk-snapshot-append-layout
	  gtk-snapshot-append-linear-gradient gtk-snapshot-append-node
	  gtk-snapshot-append-outset-shadow
	  gtk-snapshot-append-radial-gradient
	  gtk-snapshot-append-repeating-linear-gradient
	  gtk-snapshot-append-repeating-radial-gradient
	  gtk-snapshot-append-texture gtk-snapshot-free-to-node 
	  gtk-snapshot-free-to-paintable gtk-snapshot-gl-shader-pop-texture
	  gtk-snapshot-perspective gtk-snapshot-pop gtk-snapshot-push-blend
	  gtk-snapshot-push-blur gtk-snapshot-push-clip
	  gtk-snapshot-push-color-matrix gtk-snapshot-push-cross-fade
	  gtk-snapshot-push-debug gtk-snapshot-push-gl-shader
	  gtk-snapshot-push-opacity gtk-snapshot-push-repeat
	  gtk-snapshot-push-rounded-clip gtk-snapshot-push-shadow
	  gtk-snapshot-render-background gtk-snapshot-render-focus
	  gtk-snapshot-render-frame gtk-snapshot-render-insertion-cursor
	  gtk-snapshot-render-layout gtk-snapshot-restore
	  gtk-snapshot-rotate gtk-snapshot-rotate-3d gtk-snapshot-save
	  gtk-snapshot-scale gtk-snapshot-scale-3d gtk-snapshot-to-node
	  gtk-snapshot-to-paintable gtk-snapshot-transform
	  gtk-snapshot-transform-matrix gtk-snapshot-translate
	  gtk-snapshot-translate-3d
	  gtk-sorter-changed gtk-sorter-compare gtk-sorter-get-order
	  gtk-sort-list-model-new gtk-sort-list-model-get-incremental
	  gtk-sort-list-model-get-model gtk-sort-list-model-get-pending
	  gtk-sort-list-model-get-sorter gtk-sort-list-model-set-incremental
	  gtk-sort-list-model-set-model gtk-sort-list-model-set-sorter
	  gtk-spin-button-new gtk-spin-button-new-with-range
	  gtk-spin-button-configure gtk-spin-button-get-adjustment
	  gtk-spin-button-get-climb-rate gtk-spin-button-get-digits
	  gtk-spin-button-get-increments gtk-spin-button-get-numeric
	  gtk-spin-button-get-range gtk-spin-button-get-snap-to-ticks
	  gtk-spin-button-get-update-policy gtk-spin-button-get-value
	  gtk-spin-button-get-value-as-int gtk-spin-button-get-wrap
	  gtk-spin-button-set-adjustment gtk-spin-button-set-climb-rate
	  gtk-spin-button-set-digits gtk-spin-button-set-increments
	  gtk-spin-button-set-numeric gtk-spin-button-set-range
	  gtk-spin-button-set-snap-to-ticks gtk-spin-button-set-update-policy
	  gtk-spin-button-set-value gtk-spin-button-set-wrap
	  gtk-spin-button-spin gtk-spin-button-update
	  gtk-spinner-new gtk-spinner-get-spinning gtk-spinner-set-spinning
	  gtk-spinner-start gtk-spinner-stop
	  gtk-stack-new gtk-stack-add-child gtk-stack-add-named
	  gtk-stack-add-titled gtk-stack-get-child-by-name
	  gtk-stack-get-hhomogeneous gtk-stack-get-interpolate-size
	  gtk-stack-get-page gtk-stack-get-pages
	  gtk-stack-get-transition-duration gtk-stack-get-transition-running
	  gtk-stack-get-transition-type
	  gtk-stack-get-vhomogeneous gtk-stack-get-visible-child
	  gtk-stack-get-visible-child-name gtk-stack-remove
	  gtk-stack-set-hhomogeneous gtk-stack-set-interpolate-size
	  gtk-stack-set-transition-duration gtk-stack-set-transition-type
	  gtk-stack-set-vhomogeneous gtk-stack-set-visible-child
	  gtk-stack-set-visible-child-full gtk-stack-set-visible-child-name
	  gtk-stack-page-get-child gtk-stack-page-get-icon-name
	  gtk-stack-page-get-name gtk-stack-page-get-needs-attention
	  gtk-stack-page-get-title gtk-stack-page-get-use-underline
	  gtk-stack-page-get-visible gtk-stack-page-set-icon-name
	  gtk-stack-page-set-name gtk-stack-page-set-needs-attention
	  gtk-stack-page-set-title gtk-stack-page-set-use-underline
	  gtk-stack-page-set-visible
	  gtk-stack-sidebar-new gtk-stack-sidebar-get-stack
	  gtk-stack-sidebar-set-stack
	  gtk-stack-switcher-new gtk-stack-switcher-get-stack
	  gtk-stack-switcher-set-stack
	  gtk-statusbar-new gtk-statusbar-get-context-id
	  gtk-statusbar-pop gtk-statusbar-push
	  gtk-statusbar-remove gtk-statusbar-remove-all
	  gtk-string-filter-new gtk-string-filter-get-expression
	  gtk-string-filter-get-ignore-case gtk-string-filter-get-match-mode
	  gtk-string-filter-get-search gtk-string-filter-set-expression
	  gtk-string-filter-set-ignore-case gtk-string-filter-set-match-mode
	  gtk-string-filter-set-search
	  gtk-string-list-new gtk-string-list-append gtk-string-list-get-string
	  gtk-string-list-remove gtk-string-list-splice gtk-string-list-take
	  gtk-string-object-new gtk-string-object-get-string
	  gtk-string-sorter-new gtk-string-sorter-get-expression
	  gtk-string-sorter-get-ignore-case gtk-string-sorter-set-expression
	  gtk-string-sorter-set-ignore-case
	  gtk-style-context-add-provider-for-display
	  gtk-style-context-remove-provider-for-display
	  gtk-style-context-add-class gtk-style-context-add-provider
	  gtk-style-context-get-border gtk-style-context-get-color
	  gtk-style-context-get-display gtk-style-context-get-margin
	  gtk-style-context-get-padding gtk-style-context-get-scale
	  gtk-style-context-get-state gtk-style-context-has-class
	  gtk-style-context-lookup-color gtk-style-context-remove-class
	  gtk-style-context-remove-provider gtk-style-context-restore
	  gtk-style-context-save gtk-style-context-set-display
	  gtk-style-context-set-scale gtk-style-context-set-state
	  gtk-style-context-to-string
	  gtk-switch-new gtk-switch-get-active gtk-switch-get-state
	  gtk-switch-set-active gtk-switch-set-state
	  gtk-text-new gtk-text-new-with-buffer gtk-text-compute-cursor-extents
	  gtk-text-get-activates-default gtk-text-get-attributes
	  gtk-text-get-buffer gtk-text-get-enable-emoji-completion
	  gtk-text-get-extra-menu gtk-text-get-input-hints
	  gtk-text-get-input-purpose
	  gtk-text-get-invisible-char gtk-text-get-max-length
	  gtk-text-get-overwrite-mode gtk-text-get-placeholder-text
	  gtk-text-get-propagate-text-width gtk-text-get-tabs
	  gtk-text-get-text-length gtk-text-get-truncate-multiline
	  gtk-text-get-visibility gtk-text-grab-focus-without-selecting
	  gtk-text-set-activates-default gtk-text-set-attributes
	  gtk-text-set-buffer gtk-text-set-enable-emoji-completion
	  gtk-text-set-extra-menu gtk-text-set-input-hints
	  gtk-text-set-input-purpose gtk-text-set-invisible-char
	  gtk-text-set-max-length gtk-text-set-overwrite-mode
	  gtk-text-set-placeholder-text gtk-text-set-propagate-text-width
	  gtk-text-set-tabs gtk-text-set-truncate-multiline
	  gtk-text-set-visibility gtk-text-unset-invisible-char
	  gtk-text-buffer-new gtk-text-buffer-add-mark
	  gtk-text-buffer-add-selection-clipboard gtk-text-buffer-apply-tag
	  gtk-text-buffer-apply-tag-by-name gtk-text-buffer-backspace
	  gtk-text-buffer-begin-irreversible-action
	  gtk-text-buffer-begin-user-action gtk-text-buffer-copy-clipboard
	  gtk-text-buffer-create-child-anchor gtk-text-buffer-create-mark
	  gtk-text-buffer-create-tag gtk-text-buffer-cut-clipboard
	  gtk-text-buffer-delete gtk-text-buffer-delete-interactive
	  gtk-text-buffer-delete-mark gtk-text-buffer-delete-mark-by-name
	  gtk-text-buffer-delete-selection
	  gtk-text-buffer-end-irreversible-action
	  gtk-text-buffer-end-user-action gtk-text-buffer-get-bounds
	  gtk-text-buffer-get-can-redo gtk-text-buffer-get-can-undo
	  gtk-text-buffer-get-char-count gtk-text-buffer-get-enable-undo
	  gtk-text-buffer-get-end-iter gtk-text-buffer-get-has-selection
	  gtk-text-buffer-get-insert gtk-text-buffer-get-iter-at-child-anchor
	  gtk-text-buffer-get-iter-at-line
	  gtk-text-buffer-get-iter-at-line-index
	  gtk-text-buffer-get-iter-at-line-offset
	  gtk-text-buffer-get-iter-at-mark gtk-text-buffer-get-iter-at-offset
	  gtk-text-buffer-get-line-count gtk-text-buffer-get-mark
	  gtk-text-buffer-get-max-undo-levels gtk-text-buffer-get-modified
	  gtk-text-buffer-get-selection-bound
	  gtk-text-buffer-get-selection-bounds
	  gtk-text-buffer-get-selection-content gtk-text-buffer-get-slice
	  gtk-text-buffer-get-start-iter gtk-text-buffer-get-tag-table
	  gtk-text-buffer-get-text gtk-text-buffer-insert
	  gtk-text-buffer-insert-at-cursor gtk-text-buffer-insert-child-anchor
	  gtk-text-buffer-insert-interactive gtk-text-buffer-insert-markup
	  gtk-text-buffer-insert-paintable gtk-text-buffer-insert-range
	  gtk-text-buffer-insert-range-interactive
	  gtk-text-buffer-insert-with-tags
	  gtk-text-buffer-insert-with-tags-by-name
	  gtk-text-buffer-move-mark gtk-text-buffer-move-mark-by-name
	  gtk-text-buffer-paste-clipboard gtk-text-buffer-place-cursor
	  gtk-text-buffer-redo gtk-text-buffer-remove-all-tags
	  gtk-text-buffer-remove-selection-clipboard
	  gtk-text-buffer-remove-tag gtk-text-buffer-remove-tag-by-name
	  gtk-text-buffer-select-range gtk-text-buffer-set-enable-undo
	  gtk-text-buffer-set-max-undo-levels gtk-text-buffer-set-modified
	  gtk-text-buffer-set-text gtk-text-buffer-undo
	  gtk-text-child-anchor-new gtk-text-child-anchor-get-deleted
	  gtk-text-child-anchor-get-widgets
	  gtk-text-mark-new gtk-text-mark-get-buffer gtk-text-mark-get-deleted
	  gtk-text-mark-get-left-gravity gtk-text-mark-get-name
	  gtk-text-mark-get-visible gtk-text-mark-set-visible
	  gtk-text-tag-new gtk-text-tag-changed gtk-text-tag-get-priority
	  gtk-text-tag-set-priority
	  gtk-text-tag-table-new gtk-text-tag-table-add
	  gtk-text-tag-table-foreach gtk-text-tag-table-get-size
	  gtk-text-tag-table-lookup gtk-text-tag-table-remove
	  gtk-text-view-new gtk-text-view-new-with-buffer
	  gtk-text-view-add-child-at-anchor gtk-text-view-add-overlay
	  gtk-text-view-backward-display-line
	  gtk-text-view-backward-display-line-start
	  gtk-text-view-buffer-to-window-coords
	  gtk-text-view-forward-display-line
	  gtk-text-view-forward-display-line-end
	  gtk-text-view-get-accepts-tab gtk-text-view-get-bottom-margin
	  gtk-text-view-get-buffer gtk-text-view-get-cursor-locations
	  gtk-text-view-get-cursor-visible gtk-text-view-get-editable
	  gtk-text-view-get-extra-menu gtk-text-view-get-gutter
	  gtk-text-view-get-indent gtk-text-view-get-input-hints
	  gtk-text-view-get-input-purpose gtk-text-view-get-iter-at-location
	  gtk-text-view-get-iter-at-position gtk-text-view-get-iter-location
	  gtk-text-view-get-justification gtk-text-view-get-left-margin
	  gtk-text-view-get-line-at-y gtk-text-view-get-line-yrange
	  gtk-text-view-get-ltr-context gtk-text-view-get-monospace
	  gtk-text-view-get-overwrite gtk-text-view-get-pixels-above-lines
	  gtk-text-view-get-pixels-below-lines
	  gtk-text-view-get-pixels-inside-wrap gtk-text-view-get-right-margin
	  gtk-text-view-get-rtl-context gtk-text-view-get-tabs
	  gtk-text-view-get-top-margin gtk-text-view-get-visible-rect
	  gtk-text-view-get-wrap-mode
	  gtk-text-view-im-context-filter-keypress
	  gtk-text-view-move-mark-onscreen gtk-text-view-move-overlay
	  gtk-text-view-move-visually gtk-text-view-place-cursor-onscreen
	  gtk-text-view-remove gtk-text-view-reset-cursor-blink
	  gtk-text-view-reset-im-context gtk-text-view-scroll-mark-onscreen
	  gtk-text-view-scroll-to-iter gtk-text-view-scroll-to-mark
	  gtk-text-view-set-accepts-tab gtk-text-view-set-bottom-margin
	  gtk-text-view-set-buffer gtk-text-view-set-cursor-visible
	  gtk-text-view-set-editable gtk-text-view-set-extra-menu
	  gtk-text-view-set-gutter gtk-text-view-set-indent
	  gtk-text-view-set-input-hints gtk-text-view-set-input-purpose
	  gtk-text-view-set-justification gtk-text-view-set-left-margin
	  gtk-text-view-set-monospace gtk-text-view-set-overwrite
	  gtk-text-view-set-pixels-above-lines
	  gtk-text-view-set-pixels-below-lines
	  gtk-text-view-set-pixels-inside-wrap
	  gtk-text-view-set-right-margin gtk-text-view-set-tabs
	  gtk-text-view-set-top-margin gtk-text-view-set-wrap-mode
	  gtk-text-view-starts-display-line gtk-text-view-window-to-buffer-coords
	  gtk-toggle-button-new gtk-toggle-button-new-with-label
	  gtk-toggle-button-new-with-mnemonic
	  gtk-toggle-button-get-active gtk-toggle-button-set-active
	  gtk-toggle-button-set-group gtk-toggle-button-toggled
	  gtk-tooltip-set-custom gtk-tooltip-set-icon
	  gtk-tooltip-set-icon-from-gicon gtk-tooltip-set-icon-from-icon-name
	  gtk-tooltip-set-markup gtk-tooltip-set-text
	  gtk-tooltip-set-tip-area
	  gtk-tree-expander-new gtk-tree-expander-get-child
	  gtk-tree-expander-get-item gtk-tree-expander-get-list-row
	  gtk-tree-expander-set-child gtk-tree-expander-set-list-row
	  gtk-tree-list-model-new gtk-tree-list-model-get-autoexpand
	  gtk-tree-list-model-get-child-row gtk-tree-list-model-get-model
	  gtk-tree-list-model-get-passthrough gtk-tree-list-model-get-row
	  gtk-tree-list-model-set-autoexpand gtk-tree-list-row-get-child-row
	  gtk-tree-list-row-get-children gtk-tree-list-row-get-depth
	  gtk-tree-list-row-get-expanded gtk-tree-list-row-get-item
	  gtk-tree-list-row-get-parent gtk-tree-list-row-get-position
	  gtk-tree-list-row-is-expandable gtk-tree-list-row-set-expanded
	  gtk-tree-list-row-sorter-new gtk-tree-list-row-sorter-get-sorter
	  gtk-tree-list-row-sorter-set-sorter
	  gtk-tree-model-filter-clear-cache
	  gtk-tree-model-filter-convert-child-iter-to-iter
	  gtk-tree-model-filter-convert-child-path-to-path
	  gtk-tree-model-filter-convert-iter-to-child-iter
	  gtk-tree-model-filter-convert-path-to-child-path
	  gtk-tree-model-filter-get-model gtk-tree-model-filter-refilter
	  gtk-tree-model-filter-set-modify-func
	  gtk-tree-model-filter-set-visible-column
	  gtk-tree-model-filter-set-visible-func
	  gtk-tree-model-sort-new-with-model
	  gtk-tree-model-sort-clear-cache
	  gtk-tree-model-sort-convert-child-iter-to-iter
	  gtk-tree-model-sort-convert-child-path-to-path
	  gtk-tree-model-sort-convert-iter-to-child-iter
	  gtk-tree-model-sort-convert-path-to-child-path
	  gtk-tree-model-sort-get-model
	  gtk-tree-model-sort-reset-default-sort-func
	  gtk-tree-selection-count-selected-rows
	  gtk-tree-selection-get-mode gtk-tree-selection-get-select-function
	  gtk-tree-selection-get-selected gtk-tree-selection-get-selected-rows
	  gtk-tree-selection-get-tree-view gtk-tree-selection-get-user-data
	  gtk-tree-selection-iter-is-selected
	  gtk-tree-selection-path-is-selected gtk-tree-selection-select-all
	  gtk-tree-selection-select-iter gtk-tree-selection-select-path
	  gtk-tree-selection-select-range gtk-tree-selection-selected-foreach
	  gtk-tree-selection-set-mode gtk-tree-selection-set-select-function
	  gtk-tree-selection-unselect-all gtk-tree-selection-unselect-iter
	  gtk-tree-selection-unselect-path gtk-tree-selection-unselect-range
	  gtk-tree-store-new gtk-tree-store-newv gtk-tree-store-append
	  gtk-tree-store-clear gtk-tree-store-insert gtk-tree-store-insert-after
	  gtk-tree-store-insert-before gtk-tree-store-insert-with-values
	  gtk-tree-store-insert-with-valuesv gtk-tree-store-is-ancestor
	  gtk-tree-store-iter-depth gtk-tree-store-iter-is-valid
	  gtk-tree-store-move-after gtk-tree-store-move-before
	  gtk-tree-store-prepend gtk-tree-store-remove gtk-tree-store-reorder
	  gtk-tree-store-set gtk-tree-store-set-column-types
	  gtk-tree-store-set-valist gtk-tree-store-set-value
	  gtk-tree-store-set-valuesv gtk-tree-store-swap
	  gtk-tree-view-new gtk-tree-view-new-with-model
	  gtk-tree-view-append-column gtk-tree-view-collapse-all
	  gtk-tree-view-collapse-row gtk-tree-view-columns-autosize
	  gtk-tree-view-convert-bin-window-to-tree-coords
	  gtk-tree-view-convert-bin-window-to-widget-coords
	  gtk-tree-view-convert-tree-to-bin-window-coords
	  gtk-tree-view-convert-tree-to-widget-coords
	  gtk-tree-view-convert-widget-to-bin-window-coords
	  gtk-tree-view-convert-widget-to-tree-coords
	  gtk-tree-view-create-row-drag-icon
	  gtk-tree-view-enable-model-drag-dest
	  gtk-tree-view-enable-model-drag-source
	  gtk-tree-view-expand-all gtk-tree-view-expand-row
	  gtk-tree-view-expand-to-path
	  gtk-tree-view-get-activate-on-single-click
	  gtk-tree-view-get-background-area gtk-tree-view-get-cell-area
	  gtk-tree-view-get-column gtk-tree-view-get-columns
	  gtk-tree-view-get-cursor gtk-tree-view-get-dest-row-at-pos
	  gtk-tree-view-get-drag-dest-row gtk-tree-view-get-enable-search
	  gtk-tree-view-get-enable-tree-lines gtk-tree-view-get-expander-column
	  gtk-tree-view-get-fixed-height-mode gtk-tree-view-get-grid-lines
	  gtk-tree-view-get-headers-clickable gtk-tree-view-get-headers-visible
	  gtk-tree-view-get-hover-expand gtk-tree-view-get-hover-selection
	  gtk-tree-view-get-level-indentation gtk-tree-view-get-model
	  gtk-tree-view-get-n-columns gtk-tree-view-get-path-at-pos
	  gtk-tree-view-get-reorderable gtk-tree-view-get-row-separator-func
	  gtk-tree-view-get-rubber-banding gtk-tree-view-get-search-column
	  gtk-tree-view-get-search-entry gtk-tree-view-get-search-equal-func
	  gtk-tree-view-get-selection gtk-tree-view-get-show-expanders
	  gtk-tree-view-get-tooltip-column gtk-tree-view-get-tooltip-context
	  gtk-tree-view-get-visible-range gtk-tree-view-get-visible-rect
	  gtk-tree-view-insert-column gtk-tree-view-insert-column-with-attributes
	  gtk-tree-view-insert-column-with-data-func
	  gtk-tree-view-is-blank-at-pos gtk-tree-view-is-rubber-banding-active
	  gtk-tree-view-map-expanded-rows gtk-tree-view-move-column-after
	  gtk-tree-view-remove-column gtk-tree-view-row-activated
	  gtk-tree-view-row-expanded gtk-tree-view-scroll-to-cell
	  gtk-tree-view-scroll-to-point gtk-tree-view-set-activate-on-single-click
	  gtk-tree-view-set-column-drag-function gtk-tree-view-set-cursor
	  gtk-tree-view-set-cursor-on-cell gtk-tree-view-set-drag-dest-row
	  gtk-tree-view-set-enable-search gtk-tree-view-set-enable-tree-lines
	  gtk-tree-view-set-expander-column gtk-tree-view-set-fixed-height-mode
	  gtk-tree-view-set-grid-lines gtk-tree-view-set-headers-clickable
	  gtk-tree-view-set-headers-visible gtk-tree-view-set-hover-expand
	  gtk-tree-view-set-hover-selection gtk-tree-view-set-level-indentation
	  gtk-tree-view-set-model gtk-tree-view-set-reorderable
	  gtk-tree-view-set-row-separator-func gtk-tree-view-set-rubber-banding
	  gtk-tree-view-set-search-column gtk-tree-view-set-search-entry
	  gtk-tree-view-set-search-equal-func gtk-tree-view-set-show-expanders
	  gtk-tree-view-set-tooltip-cell gtk-tree-view-set-tooltip-column
	  gtk-tree-view-set-tooltip-row gtk-tree-view-unset-rows-drag-dest
	  gtk-tree-view-unset-rows-drag-source
	  gtk-tree-view-column-new gtk-tree-view-column-new-with-area
	  gtk-tree-view-column-new-with-attributes
	  gtk-tree-view-column-add-attribute
	  gtk-tree-view-column-cell-get-position
	  gtk-tree-view-column-cell-get-size
	  gtk-tree-view-column-cell-is-visible
	  gtk-tree-view-column-cell-set-cell-data gtk-tree-view-column-clear
	  gtk-tree-view-column-clear-attributes gtk-tree-view-column-clicked
	  gtk-tree-view-column-focus-cell gtk-tree-view-column-get-alignment
	  gtk-tree-view-column-get-button gtk-tree-view-column-get-clickable
	  gtk-tree-view-column-get-expand gtk-tree-view-column-get-fixed-width
	  gtk-tree-view-column-get-max-width gtk-tree-view-column-get-min-width
	  gtk-tree-view-column-get-reorderable
	  gtk-tree-view-column-get-resizable gtk-tree-view-column-get-sizing
	  gtk-tree-view-column-get-sort-column-id
	  gtk-tree-view-column-get-sort-indicator
	  gtk-tree-view-column-get-sort-order gtk-tree-view-column-get-spacing
	  gtk-tree-view-column-get-title gtk-tree-view-column-get-tree-view
	  gtk-tree-view-column-get-visible gtk-tree-view-column-get-widget
	  gtk-tree-view-column-get-width gtk-tree-view-column-get-x-offset
	  gtk-tree-view-column-pack-end gtk-tree-view-column-pack-start
	  gtk-tree-view-column-queue-resize gtk-tree-view-column-set-alignment
	  gtk-tree-view-column-set-attributes
	  gtk-tree-view-column-set-cell-data-func
	  gtk-tree-view-column-set-clickable gtk-tree-view-column-set-expand
	  gtk-tree-view-column-set-fixed-width
	  gtk-tree-view-column-set-max-width gtk-tree-view-column-set-min-width
	  gtk-tree-view-column-set-reorderable
	  gtk-tree-view-column-set-resizable gtk-tree-view-column-set-sizing
	  gtk-tree-view-column-set-sort-column-id
	  gtk-tree-view-column-set-sort-indicator
	  gtk-tree-view-column-set-sort-order gtk-tree-view-column-set-spacing
	  gtk-tree-view-column-set-title gtk-tree-view-column-set-visible
	  gtk-tree-view-column-set-widget
	  gtk-video-new gtk-video-new-for-file gtk-video-new-for-filename
	  gtk-video-new-for-media-stream gtk-video-new-for-resource
	  gtk-video-get-autoplay gtk-video-get-file gtk-video-get-loop
	  gtk-video-get-media-stream gtk-video-set-autoplay gtk-video-set-file
	  gtk-video-set-filename gtk-video-set-loop gtk-video-set-media-stream
	  gtk-video-set-resource
	  gtk-viewport-new gtk-viewport-get-child
	  gtk-viewport-get-scroll-to-focus gtk-viewport-set-child
	  gtk-viewport-set-scroll-to-focus
	  gtk-volume-button-new
	  gtk-widget-get-default-direction gtk-widget-set-default-direction
	  gtk-widget-action-set-enabled gtk-widget-activate
	  gtk-widget-activate-action gtk-widget-activate-action-variant
	  gtk-widget-activate-default gtk-widget-add-controller
	  gtk-widget-add-css-class gtk-widget-add-mnemonic-label
	  gtk-widget-add-tick-callback gtk-widget-allocate
	  gtk-widget-child-focus gtk-widget-compute-bounds
	  gtk-widget-compute-expand gtk-widget-compute-point
	  gtk-widget-compute-transform gtk-widget-contains
	  gtk-widget-create-pango-context gtk-widget-create-pango-layout
	  gtk-drag-check-threshold gtk-widget-error-bell
	  gtk-widget-get-allocated-baseline gtk-widget-get-allocated-height
	  gtk-widget-get-allocated-width gtk-widget-get-allocation
	  gtk-widget-get-ancestor gtk-widget-get-can-focus
	  gtk-widget-get-can-target gtk-widget-get-child-visible
	  gtk-widget-get-clipboard gtk-widget-get-css-classes
	  gtk-widget-get-css-name gtk-widget-get-cursor gtk-widget-get-direction
	  gtk-widget-get-display gtk-widget-get-first-child
	  gtk-widget-get-focus-child gtk-widget-get-focus-on-click
	  gtk-widget-get-focusable gtk-widget-get-font-map
	  gtk-widget-get-font-options gtk-widget-get-frame-clock
	  gtk-widget-get-halign gtk-widget-get-has-tooltip gtk-widget-get-height
	  gtk-widget-get-hexpand gtk-widget-get-hexpand-set
	  gtk-widget-get-last-child gtk-widget-get-layout-manager
	  gtk-widget-get-mapped gtk-widget-get-margin-bottom
	  gtk-widget-get-margin-end gtk-widget-get-margin-start
	  gtk-widget-get-margin-top gtk-widget-get-name gtk-widget-get-native
	  gtk-widget-get-next-sibling gtk-widget-get-opacity
	  gtk-widget-get-overflow gtk-widget-get-pango-context
	  gtk-widget-get-parent gtk-widget-get-preferred-size
	  gtk-widget-get-prev-sibling gtk-widget-get-primary-clipboard
	  gtk-widget-get-realized gtk-widget-get-receives-default
	  gtk-widget-get-request-mode gtk-widget-get-root
	  gtk-widget-get-scale-factor gtk-widget-get-sensitive
	  gtk-widget-get-settings gtk-widget-get-size
	  gtk-widget-get-size-request gtk-widget-get-state-flags
	  gtk-widget-get-style-context gtk-widget-get-template-child
	  gtk-widget-get-tooltip-markup gtk-widget-get-tooltip-text
	  gtk-widget-get-valign gtk-widget-get-vexpand
	  gtk-widget-get-vexpand-set gtk-widget-get-visible
	  gtk-widget-get-width gtk-widget-grab-focus gtk-widget-has-css-class
	  gtk-widget-has-default gtk-widget-has-focus
	  gtk-widget-has-visible-focus gtk-widget-hide gtk-widget-in-destruction
	  gtk-widget-init-template gtk-widget-insert-action-group
	  gtk-widget-insert-after gtk-widget-insert-before gtk-widget-is-ancestor
	  gtk-widget-is-drawable gtk-widget-is-focus gtk-widget-is-sensitive
	  gtk-widget-is-visible gtk-widget-keynav-failed
	  gtk-widget-list-mnemonic-labels gtk-widget-map gtk-widget-measure
	  gtk-widget-mnemonic-activate gtk-widget-observe-children
	  gtk-widget-observe-controllers gtk-widget-pick
	  gtk-widget-queue-allocate gtk-widget-queue-draw gtk-widget-queue-resize
	  gtk-widget-realize gtk-widget-remove-controller
	  gtk-widget-remove-css-class gtk-widget-remove-mnemonic-label
	  gtk-widget-remove-tick-callback gtk-widget-set-can-focus
	  gtk-widget-set-can-target gtk-widget-set-child-visible
	  gtk-widget-set-css-classes gtk-widget-set-cursor
	  gtk-widget-set-cursor-from-name gtk-widget-set-direction
	  gtk-widget-set-focus-child gtk-widget-set-focus-on-click
	  gtk-widget-set-focusable gtk-widget-set-font-map
	  gtk-widget-set-font-options gtk-widget-set-halign
	  gtk-widget-set-has-tooltip gtk-widget-set-hexpand
	  gtk-widget-set-hexpand-set gtk-widget-set-layout-manager
	  gtk-widget-set-margin-start gtk-widget-set-margin-end
	  gtk-widget-set-margin-top gtk-widget-set-margin-bottom
	  gtk-widget-set-name gtk-widget-set-opacity gtk-widget-set-overflow
	  gtk-widget-set-parent gtk-widget-set-receives-default
	  gtk-widget-set-sensitive gtk-widget-set-size-request
	  gtk-widget-set-size-request gtk-widget-set-state-flags
	  gtk-widget-set-tooltip-markup gtk-widget-set-tooltip-text
	  gtk-widget-set-valign gtk-widget-set-vexpand
	  gtk-widget-set-vexpand-set gtk-widget-set-visible
	  gtk-widget-should-layout gtk-widget-show gtk-widget-size-allocate
	  gtk-widget-snapshot-child gtk-widget-translate-coordinates
	  gtk-widget-trigger-tooltip-query gtk-widget-unmap gtk-widget-unparent
	  gtk-widget-unrealize gtk-widget-unset-state-flags	  
	  gtk-widget-paintable-new gtk-widget-paintable-get-widget
	  gtk-widget-paintable-set-widget
	  gtk-window-new gtk-window-get-default-icon-name gtk-window-get-toplevels
	  gtk-window-list-toplevels gtk-window-set-auto-startup-notification
	  gtk-window-set-default-icon-name gtk-window-set-interactive-debugging
	  gtk-window-close gtk-window-destroy gtk-window-fullscreen
	  gtk-window-fullscreen-on-monitor gtk-window-get-application
	  gtk-window-get-child gtk-window-get-decorated
	  gtk-window-get-default-size gtk-window-get-default-widget
	  gtk-window-get-deletable gtk-window-get-destroy-with-parent
	  gtk-window-get-focus gtk-window-get-focus-visible gtk-window-get-group
	  gtk-window-get-handle-menubar-accel gtk-window-get-hide-on-close
	  gtk-window-get-icon-name gtk-window-get-mnemonics-visible
	  gtk-window-get-modal gtk-window-get-resizable gtk-window-get-title
	  gtk-window-get-titlebar gtk-window-get-transient-for
	  gtk-window-has-group gtk-window-is-active gtk-window-is-fullscreen
	  gtk-window-is-maximized gtk-window-maximize gtk-window-minimize
	  gtk-window-present gtk-window-present-with-time
	  gtk-window-set-application gtk-window-set-child
	  gtk-window-set-decorated gtk-window-set-default-size
	  gtk-window-set-default-widget gtk-window-set-deletable
	  gtk-window-set-destroy-with-parent gtk-window-set-display
	  gtk-window-set-focus gtk-window-set-focus-visible
	  gtk-window-set-handle-menubar-accel gtk-window-set-hide-on-close
	  gtk-window-set-icon-name gtk-window-set-mnemonics-visible
	  gtk-window-set-modal gtk-window-set-resizable
	  gtk-window-set-startup-id gtk-window-set-title gtk-window-set-titlebar
	  gtk-window-set-transient-for gtk-window-unfullscreen
	  gtk-window-unmaximize gtk-window-unminimize
	  gtk-window-controls-new gtk-window-controls-get-decoration-layout
	  gtk-window-controls-get-empty gtk-window-controls-get-side
	  gtk-window-controls-set-decoration-layout
	  gtk-window-controls-set-side
	  gtk-window-group-new gtk-window-group-add-window
	  gtk-window-group-list-windows gtk-window-group-remove-window
	  gtk-window-handle-new gtk-window-handle-get-child
	  gtk-window-handle-set-child
	  ;;;;
	  gtk-accessible-get-accessible-role gtk-accessible-reset-property
	  gtk-accessible-reset-property gtk-accessible-reset-relation
	  gtk-accessible-reset-state gtk-accessible-update-property
	  gtk-accessible-update-property-value gtk-accessible-update-relation
	  gtk-accessible-update-relation-value gtk-accessible-update-state
	  gtk-accessible-update-state-value
	  gtk-actionable-get-action-name gtk-actionable-get-action-target-value
	  gtk-actionable-set-action-name gtk-actionable-set-action-target
	  gtk-actionable-set-action-target-value
	  gtk-actionable-set-detailed-action-name
	  gtk-app-chooser-get-app-info gtk-app-chooser-get-content-type
	  gtk-app-chooser-refresh
	  gtk-buildable-get-buildable-id
	  gtk-cell-editable-editing-done gtk-cell-editable-remove-widget
	  gtk-cell-editable-start-editing
	  gtk-cell-layout-add-attribute gtk-cell-layout-clear
	  gtk-cell-layout-clear-attributes gtk-cell-layout-get-area
	  gtk-cell-layout-get-cells gtk-cell-layout-pack-end
	  gtk-cell-layout-pack-start gtk-cell-layout-reorder
	  gtk-cell-layout-set-attributes gtk-cell-layout-set-cell-data-func
	  gtk-color-chooser-add-palette gtk-color-chooser-get-rgba
	  gtk-color-chooser-get-use-alpha gtk-color-chooser-set-rgba
	  gtk-color-chooser-set-use-alpha


	  ;;;;
	  gtk-accelerator-get-default-mod-mask gtk-accelerator-get-label
	  gtk-accelerator-get-label-with-keycode gtk-accelerator-name
	  gtk-accelerator-name-with-keycode gtk-accelerator-parse
	  gtk-accelerator-parse-with-keycode gtk-accelerator-valid
	  gtk-check-version gtk-css-parser-error-quark
	  gtk-css-parser-warning-quark gtk-disable-setlocale
	  gtk-distribute-natural-allocation gtk-enumerate-printers
	  gtk-get-binary-age gtk-get-debug-flags gtk-get-default-language
	  gtk-get-interface-age gtk-get-locale-direction	  
	  gtk-get-major-version gtk-get-micro-version gtk-get-minor-version
	  gtk-hsv-to-rgb gtk-init gtk-init-check gtk-is-initialized
	  gtk-param-spec-expression gtk-print-run-page-setup-dialog
	  gtk-print-run-page-setup-dialog-async gtk-render-activity
	  gtk-render-arrow gtk-render-background gtk-render-check
	  gtk-render-expander gtk-render-focus gtk-render-frame
	  gtk-render-handle gtk-render-icon gtk-render-layout gtk-render-line
	  gtk-render-option gtk-rgb-to-hsv gtk-set-debug-flags
	  gtk-show-about-dialog gtk-show-uri gtk-show-uri-full
	  gtk-show-uri-full-finish gtk-test-accessible-assertion-message-role
	  gtk-test-accessible-check-property gtk-test-accessible-check-relation
	  gtk-test-accessible-check-state gtk-test-accessible-has-property
	  gtk-test-accessible-has-relation
	  gtk-test-accessible-has-role gtk-test-accessible-has-state
	  gtk-test-init gtk-test-list-all-types gtk-test-register-all-types
	  gtk-test-widget-wait-for-draw gtk-tree-create-row-drag-content
	  gtk-tree-get-row-drag-data gtk-value-dup-expression
	  gtk-value-get-expression gtk-value-set-expression
	  gtk-value-take-expression
          ;;;;
	  ;;;;
	  gsk-blend-node-new gsk-blend-node-get-blend-mode
	  gsk-blend-node-get-bottom-child gsk-blend-node-get-top-child
	  gsk-blur-node-new gsk-blur-node-get-child gsk-blur-node-get-radius
	  gsk-border-node-new gsk-border-node-get-colors
	  gsk-border-node-get-outline gsk-border-node-get-widths
	  gsk-cairo-node-new gsk-cairo-node-get-draw-context
	  gsk-cairo-node-get-surface
	  gsk-cairo-renderer-new
	  gsk-clip-node-new gsk-clip-node-get-child gsk-clip-node-get-clip
	  gsk-color-matrix-node-new gsk-color-matrix-node-get-child
	  gsk-color-matrix-node-get-color-matrix
	  gsk-color-matrix-node-get-color-offset
	  gsk-color-node-new gsk-color-node-get-color
	  gsk-conic-gradient-node-new gsk-conic-gradient-node-get-angle
	  gsk-conic-gradient-node-get-center
	  gsk-conic-gradient-node-get-color-stops
	  gsk-conic-gradient-node-get-n-color-stops
	  gsk-conic-gradient-node-get-rotation
	  gsk-container-node-new gsk-container-node-get-child
	  gsk-container-node-get-n-children
	  gsk-cross-fade-node-new gsk-cross-fade-node-get-end-child
	  gsk-cross-fade-node-get-progress gsk-cross-fade-node-get-start-child
	  gsk-debug-node-new gsk-debug-node-get-child gsk-debug-node-get-message
	  gsk-gl-renderer-new
	  gsk-gl-shader-new-from-bytes gsk-gl-shader-new-from-resource
	  gsk-gl-shader-compile gsk-gl-shader-find-uniform-by-name
	  gsk-gl-shader-format-args gsk-gl-shader-format-args-va
	  gsk-gl-shader-get-arg-bool gsk-gl-shader-get-arg-float
	  gsk-gl-shader-get-arg-int gsk-gl-shader-get-arg-uint
	  gsk-gl-shader-get-arg-vec2 gsk-gl-shader-get-arg-vec3
	  gsk-gl-shader-get-arg-vec4 gsk-gl-shader-get-args-size
	  gsk-gl-shader-get-n-textures gsk-gl-shader-get-n-uniforms
	  gsk-gl-shader-get-resource gsk-gl-shader-get-source
	  gsk-gl-shader-get-uniform-name gsk-gl-shader-get-uniform-offset
	  gsk-gl-shader-get-uniform-type 
	  gsk-gl-shader-node-new gsk-gl-shader-node-get-args
	  gsk-gl-shader-node-get-child gsk-gl-shader-node-get-n-children
	  gsk-gl-shader-node-get-shader
	  gsk-inset-shadow-node-new gsk-inset-shadow-node-get-blur-radius
	  gsk-inset-shadow-node-get-color gsk-inset-shadow-node-get-dx
	  gsk-inset-shadow-node-get-dy gsk-inset-shadow-node-get-outline
	  gsk-inset-shadow-node-get-spread
	  gsk-linear-gradient-node-new gsk-linear-gradient-node-get-color-stops
	  gsk-linear-gradient-node-get-end
	  gsk-linear-gradient-node-get-n-color-stops
	  gsk-linear-gradient-node-get-start
	  gsk-opacity-node-new gsk-opacity-node-get-child
	  gsk-opacity-node-get-opacity
	  gsk-outset-shadow-node-new gsk-outset-shadow-node-get-blur-radius
	  gsk-outset-shadow-node-get-color gsk-outset-shadow-node-get-dx
	  gsk-outset-shadow-node-get-dy gsk-outset-shadow-node-get-outline
	  gsk-outset-shadow-node-get-spread
	  gsk-radial-gradient-node-new gsk-radial-gradient-node-get-center
	  gsk-radial-gradient-node-get-color-stops
	  gsk-radial-gradient-node-get-end gsk-radial-gradient-node-get-hradius
	  gsk-radial-gradient-node-get-n-color-stops
	  gsk-radial-gradient-node-get-start
	  gsk-radial-gradient-node-get-vradius
	  gsk-renderer-new-for-surface gsk-renderer-get-surface
	  gsk-renderer-is-realized gsk-renderer-realize gsk-renderer-render
	  gsk-renderer-render-texture gsk-renderer-unrealize
	  gsk-render-node-deserialize gsk-render-node-draw
	  gsk-render-node-get-bounds gsk-render-node-get-node-type
	  gsk-render-node-ref gsk-render-node-serialize gsk-render-node-unref
	  gsk-render-node-write-to-file
	  gsk-repeating-linear-gradient-node-new
	  gsk-repeating-radial-gradient-node-new
	  gsk-repeat-node-new gsk-repeat-node-get-child
	  gsk-repeat-node-get-child-bounds
	  gsk-rounded-clip-node-new gsk-rounded-clip-node-get-child
	  gsk-rounded-clip-node-get-clip
	  gsk-shadow-node-new gsk-shadow-node-get-child
	  gsk-shadow-node-get-n-shadows gsk-shadow-node-get-shadow
	  gsk-text-node-new gsk-text-node-get-color gsk-text-node-get-font
	  gsk-text-node-get-glyphs gsk-text-node-get-num-glyphs
	  gsk-text-node-get-offset gsk-text-node-has-color-glyphs
	  gsk-texture-node-new gsk-texture-node-get-texture
	  gsk-transform-node-new gsk-transform-node-get-child
	  gsk-transform-node-get-transform
	  gsk-serialization-error-quark
	  gsk-value-dup-render-node gsk-value-get-render-node 
	  gsk-value-set-render-node gsk-value-take-render-node
	  ;;;;
	  gdk-app-launch-context-get-display gdk-app-launch-context-set-desktop
	  gdk-app-launch-context-set-icon gdk-app-launch-context-set-icon-name
	  gdk-app-launch-context-set-timestamp
	  gdk-button-event-get-button
	  gdk-cairo-context-cairo-create
	  gdk-clipboard-get-content gdk-clipboard-get-display
	  gdk-clipboard-get-formats gdk-clipboard-is-local
	  gdk-clipboard-read-async gdk-clipboard-read-finish
	  gdk-clipboard-read-text-async gdk-clipboard-read-text-finish
	  gdk-clipboard-read-texture-async gdk-clipboard-read-texture-finish
	  gdk-clipboard-read-value-async gdk-clipboard-read-value-finish
	  gdk-clipboard-set gdk-clipboard-set-content gdk-clipboard-set-text
	  gdk-clipboard-set-texture gdk-clipboard-set-valist
	  gdk-clipboard-set-value gdk-clipboard-store-async
	  gdk-clipboard-store-finish
	  gdk-content-deserializer-get-cancellable
	  gdk-content-deserializer-get-gtype
	  gdk-content-deserializer-get-input-stream
	  gdk-content-deserializer-get-mime-type
	  gdk-content-deserializer-get-priority
	  gdk-content-deserializer-get-task-data
	  gdk-content-deserializer-get-user-data
	  gdk-content-deserializer-get-value
	  gdk-content-deserializer-return-error
	  gdk-content-deserializer-return-success
	  gdk-content-deserializer-set-task-data
	  gdk-crossing-event-get-detail gdk-crossing-event-get-focus
	  gdk-crossing-event-get-mode
	  gdk-cursor-new-from-name gdk-cursor-new-from-texture
	  gdk-cursor-get-fallback gdk-cursor-get-hotspot-x
	  gdk-cursor-get-hotspot-y gdk-cursor-get-name gdk-cursor-get-texture
	  gdk-device-get-caps-lock-state gdk-device-get-device-tool
	  gdk-device-get-direction gdk-device-get-display
	  gdk-device-get-has-cursor gdk-device-get-modifier-state
	  gdk-device-get-name gdk-device-get-num-lock-state
	  gdk-device-get-num-touches gdk-device-get-product-id
	  gdk-device-get-scroll-lock-state gdk-device-get-seat
	  gdk-device-get-source gdk-device-get-surface-at-position
	  gdk-device-get-timestamp gdk-device-get-vendor-id
	  gdk-device-has-bidi-layouts
	  gdk-device-tool-get-axes gdk-device-tool-get-hardware-id
	  gdk-device-tool-get-serial gdk-device-tool-get-tool-type
	  gdk-display-beep gdk-display-close gdk-display-create-gl-context
	  gdk-display-device-is-grabbed gdk-display-flush
	  gdk-display-get-app-launch-context gdk-display-get-clipboard
	  gdk-display-get-default-seat gdk-display-get-monitor-at-surface
	  gdk-display-get-monitors gdk-display-get-name
	  gdk-display-get-primary-clipboard gdk-display-get-setting
	  gdk-display-get-startup-notification-id gdk-display-is-closed
	  gdk-display-is-composited gdk-display-is-rgba gdk-display-list-seats
	  gdk-display-map-keycode gdk-display-map-keyval
	  gdk-display-notify-startup-complete gdk-display-prepare-gl
	  gdk-display-put-event gdk-display-supports-input-shapes
	  gdk-display-sync gdk-display-translate-key
	  gdk-display-manager-get gdk-display-manager-get-default-display
	  gdk-display-manager-list-displays gdk-display-manager-open-display
	  gdk-display-manager-set-default-display
	  gdk-dnd-event-get-drop
	  gdk-drag-begin gdk-drag-drop-done gdk-drag-get-actions
	  gdk-drag-get-content gdk-drag-get-device gdk-drag-get-display
	  gdk-drag-get-drag-surface gdk-drag-get-formats
	  gdk-drag-get-selected-action gdk-drag-get-surface
	  gdk-drag-set-hotspot
	  gdk-draw-context-begin-frame gdk-draw-context-end-frame
	  gdk-draw-context-get-display gdk-draw-context-get-frame-region
	  gdk-draw-context-get-surface gdk-draw-context-is-in-frame
	  gdk-drop-finish gdk-drop-get-actions gdk-drop-get-device
	  gdk-drop-get-display gdk-drop-get-drag gdk-drop-get-formats
	  gdk-drop-get-surface gdk-drop-read-async gdk-drop-read-finish
	  gdk-drop-read-value-async gdk-drop-read-value-finish
	  gdk-drop-status
	  gdk-events-get-angle gdk-events-get-center gdk-events-get-distance
	  gdk-event-get-axes gdk-event-get-axis gdk-event-get-device
	  gdk-event-get-device-tool gdk-event-get-display
	  gdk-event-get-event-sequence gdk-event-get-event-type
	  gdk-event-get-history gdk-event-get-modifier-state
	  gdk-event-get-pointer-emulated gdk-event-get-position
	  gdk-event-get-seat gdk-event-get-surface gdk-event-get-time
	  gdk-event-ref gdk-event-triggers-context-menu gdk-event-unref
	  gdk-focus-event-get-in
	  gdk-frame-clock-begin-updating gdk-frame-clock-end-updating
	  gdk-frame-clock-get-current-timings gdk-frame-clock-get-fps
	  gdk-frame-clock-get-frame-counter gdk-frame-clock-get-frame-time
	  gdk-frame-clock-get-history-start gdk-frame-clock-get-refresh-info
	  gdk-frame-clock-get-timings gdk-frame-clock-request-phase
	  gdk-gl-context-clear-current gdk-gl-context-get-current
	  gdk-gl-context-get-allowed-apis gdk-gl-context-get-api
	  gdk-gl-context-get-debug-enabled gdk-gl-context-get-display
	  gdk-gl-context-get-forward-compatible
	  gdk-gl-context-get-required-version
	  gdk-gl-context-get-surface gdk-gl-context-get-use-es
	  gdk-gl-context-get-version gdk-gl-context-is-legacy
	  gdk-gl-context-is-shared gdk-gl-context-make-current
	  gdk-gl-context-realize gdk-gl-context-set-allowed-apis
	  gdk-gl-context-set-debug-enabled
	  gdk-gl-context-set-forward-compatible
	  gdk-gl-context-set-required-version gdk-gl-context-set-use-es
	  gdk-gl-texture-new gdk-gl-texture-release
	  gdk-grab-broken-event-get-grab-surface
	  gdk-grab-broken-event-get-implicit
	  gdk-key-event-get-consumed-modifiers gdk-key-event-get-keycode
	  gdk-key-event-get-keyval gdk-key-event-get-layout
	  gdk-key-event-get-level gdk-key-event-get-match
	  gdk-key-event-is-modifier gdk-key-event-matches
	  gdk-memory-texture-new
	  gdk-monitor-get-connector gdk-monitor-get-display
	  gdk-monitor-get-geometry gdk-monitor-get-height-mm
	  gdk-monitor-get-manufacturer gdk-monitor-get-model
	  gdk-monitor-get-refresh-rate gdk-monitor-get-scale-factor
	  gdk-monitor-get-subpixel-layout gdk-monitor-get-width-mm
	  gdk-monitor-is-valid
	  gdk-pad-event-get-axis-value gdk-pad-event-get-button
	  gdk-pad-event-get-group-mode
	  gdk-scroll-event-get-deltas gdk-scroll-event-get-direction
	  gdk-scroll-event-get-unit gdk-scroll-event-is-stop
	  gdk-seat-get-capabilities gdk-seat-get-devices gdk-seat-get-display
	  gdk-seat-get-keyboard gdk-seat-get-pointer gdk-seat-get-tools
	  gdk-surface-new-popup gdk-surface-new-toplevel gdk-surface-beep
	  gdk-surface-create-cairo-context gdk-surface-create-gl-context
	  gdk-surface-create-similar-surface gdk-surface-create-vulkan-context
	  gdk-surface-destroy gdk-surface-get-cursor
	  gdk-surface-get-device-cursor gdk-surface-get-device-position
	  gdk-surface-get-display gdk-surface-get-frame-clock
	  gdk-surface-get-height gdk-surface-get-mapped
	  gdk-surface-get-scale-factor gdk-surface-get-width
	  gdk-surface-hide gdk-surface-is-destroyed gdk-surface-queue-render
	  gdk-surface-request-layout gdk-surface-set-cursor
	  gdk-surface-set-device-cursor gdk-surface-set-input-region
	  gdk-surface-set-opaque-region gdk-surface-translate-coordinates
	  gdk-texture-new-for-pixbuf gdk-texture-new-from-bytes
	  gdk-texture-new-from-file gdk-texture-new-from-filename
	  gdk-texture-new-from-resource gdk-texture-download
	  gdk-texture-get-height gdk-texture-get-width gdk-texture-save-to-png
	  gdk-texture-save-to-png-bytes gdk-texture-save-to-tiff
	  gdk-texture-save-to-tiff-bytes
	  gdk-touch-event-get-emulating-pointer
	  gdk-touchpad-event-get-deltas gdk-touchpad-event-get-gesture-phase
	  gdk-touchpad-event-get-n-fingers
	  gdk-touchpad-event-get-pinch-angle-delta
	  gdk-touchpad-event-get-pinch-scale
	  
	  
	  
	  ;;;;
	  ;;;;
	  GTK-ALIGN-CENTER 
	  GTK-ORIENTATION-HORIZONTAL GTK-ORIENTATION-VERTICAL
	  ;;
	  GSK-BLEND-MODE-DEFAULT GSK-BLEND-MODE-MULTIPLY GSK-BLEND-MODE-SCREEN
	  GSK-BLEND-MODE-OVERLAY GSK-BLEND-MODE-DARKEN GSK-BLEND-MODE-LIGHTEN
	  GSK-BLEND-MODE-COLOR-DODGE GSK-BLEND-MODE-COLOR-BURN
	  GSK-BLEND-MODE-HARD-LIGHT GSK-BLEND-MODE-SOFT-LIGHT
	  GSK-BLEND-MODE-DEFFERENCE GSK-BLEND-MODE-EXCLUSION
	  GSK-BLEND-MODE-COLOR GSK-BLEND-MODE-HUE
	  GSK-BLEND-MODE-SATURATION GSK-BLEND-MODE-LUMINOSITY
	  GSK-CORNER-TOP-LEFT GSK-CORNER-TOP-RIGHT
	  GSK-CORNER-BOTTOM-RIGHT GSK-CORNER-BOTTOM-LEFT
	  GSK-GL-UNIFORM-TYPE-NONE GSK-GL-UNIFORM-TYPE-FLOAT
	  GSK-GL-UNIFORM-TYPE-INT GSK-GL-UNIFORM-TYPE-UINT
	  GSK-GL-UNIFORM-TYPE-BOOL GSK-GL-UNIFORM-TYPE-VEC2
	  GSK-GL-UNIFORM-TYPE-VEC3 GSK-GL-UNIFORM-TYPE-VEC4
	  GSK-NOT-A-RENDER-NODE GSK-CONTAINER-NODE GSK-CAIRO-NODE GSK-COLOR-NODE
	  GSK-LINEAR-GRADIENT-NODE GSK-REPEATING-LINEAR-GRADIENT-NODE
	  GSK-RADIAL-GRADIENT-NODE GSK-REPEATING-RADIAL-GRADIENT-NODE
	  GSK-CONIT-GRADIENT-NODE GSK-BORDER-NODE GSK-TEXTURE-NODE
	  GSK-INSET-SHADOW-NODE GSK-OUTSET-SHADOW-NODE GSK-TRANSFORM-NODE
	  GSK-OPACITY-NODE GSK-COLOR-MATRIX-NODE GSK-REPEAT-NODE GSK-CLIP-NODE
	  GSK-ROUNDED-CLIP-NODE GSK-SHADOW-NODE GSK-BLEND-NODE
	  GSK-CROSS-FADE-NODE GSK-TEXT-NODE GSK-BLUR-NODE
	  GSK-DEBUG-NODE GSK-GL-SHADER-NODE
	  GSK-SCALING-FILTER-LINEAR GSK-SCALING-FILTER-NEAREST
	  GSK-SCALING-FILTER-TRILINEAR
	  GSK-TRANSFORM-CATEGORY-UNKNOWN GSK-TRANSFORM-CATEGORY-ANY
	  GSK-TRANSFORM-CATEGORY-3D GSK-TRANSFORM-CATEGORY-2D
	  GSK-TRANSFORM-CATEGORY-2D-AFFINE GSK-TRANSFORM-CATEGORY-2D-TRANSLATE
	  GSK-TRANSFORM-CATEGORY-IDENTITY
	  GSK-SERIALIZATION-UNSUPPORTED-FORMAT 
	  GSK-SERIALIZATION-UNSUPPORTED-VERSION 
	  GSK-SERIALIZATION-UNSUPPORTED-DATA 

	  ;;
	  NULL)
  (import (chezscheme))
  ;;
  (define init
    (case (machine-type)
      ((i3le ti3le a6le ta6le a6fb ta6fb a6ob ta6ob a6nb ta6nb)
       (load-shared-object "libgtk-4.so.1"))
      ((i3osx ti3osx a6osx ta6osx) (load-shared-object "libgtk-4.dylib"))
      (else (load-shared-object "libgtk-4.dll"))))
    ;;
  (define gtk-get-major-version
    (foreign-procedure "gtk_get_major_version" () int))
  ;;
  (define gtk-get-micro-version
    (foreign-procedure "gtk_get_micro_version" () int))
  ;;
  (define gtk-get-minor-version
    (foreign-procedure "gtk_get_minor_version" () int))
  ;;
  (define gtk4-library-version
    (lambda ()
      (string-append (number->string (gtk-get-major-version)) "."
		     (number->string (gtk-get-minor-version)) "."
		     (number->string (gtk-get-micro-version)))))
  ;;
  (define no-entry-for-this-version-of-library
    (lambda ()
      "no-entry-for-this-version-of-library:"))
  ;;
  (define g-callback
    (lambda (p)
      (let ((code (foreign-callable p (iptr iptr) void)))
	(lock-object code)
	(foreign-callable-entry-point code))))
  ;;
  (define g-application-run
    (foreign-procedure "g_application_run" (iptr int iptr) int))
  ;;
  (define g-signal-connect-object
    (foreign-procedure "g_signal_connect_object"
		       (iptr string int iptr int) unsigned-long))
  ;;
  (define g-object-unref
    (foreign-procedure "g_object_unref" (iptr) void))
  ;;
  (define gtk-about-dialog-new
    (foreign-procedure "gtk_about_dialog_new" () iptr))
  ;;
  (define gtk-about-dialog-add-credit-section
    (foreign-procedure "gtk_about_dialog_add_credit_section"
		       (string iptr) void))
  ;;
  (define gtk-about-dialog-get-artists
    (foreign-procedure "gtk_about_dialog_get_artists" (iptr) iptr))
  ;;
  (define gtk-about-dialog-get-authors
    (foreign-procedure "gtk_about_dialog_get_authors" (iptr) iptr))
  ;;
  (define gtk-about-dialog-get-comments
    (foreign-procedure "gtk_about_dialog_get_comments" (iptr) iptr))
  ;;
  (define gtk-about-dialog-get-copyright
    (foreign-procedure "gtk_about_dialog_get_copyright" (iptr) string))
  ;;
  (define gtk-about-dialog-get-documenters
    (foreign-procedure "gtk_about_dialog_get_documenters" (iptr) iptr))
  ;;
  (define gtk-about-dialog-get-license
    (foreign-procedure "gtk_about_dialog_get_license" (iptr) string))
  ;;
  (define gtk-about-dialog-get-license-type
    (foreign-procedure "gtk_about_dialog_get_license_type" (iptr) string))
  ;;
  (define gtk-about-dialog-get-logo
    (foreign-procedure "gtk_about_dialog_get_logo" (iptr) iptr))
  ;;
  (define gtk-about-dialog-get-logo-icon-name
    (foreign-procedure "gtk_about_dialog_get_logo_icon_name" (iptr) string))
  ;;
  (define gtk-about-dialog-get-program-name
    (foreign-procedure "gtk_about_dialog_get_program_name" (iptr) string))
  ;;
  (define gtk-about-dialog-get-system-information
    (foreign-procedure "gtk_about_dialog_get_system_information"
		       (iptr) string))
  ;;
  (define gtk-about-dialog-get-translator-credits
    (foreign-procedure "gtk_about_dialog_get_translator_credits" (iptr) iptr))
  ;;
  (define gtk-about-dialog-get-version
    (foreign-procedure "gtk_about_dialog_get_version" (iptr) string))
  ;;
  (define gtk-about-dialog-get-website
    (foreign-procedure "gtk_about_dialog_get_website" (iptr) string))
  ;;
  (define gtk-about-dialog-get-website-label
    (foreign-procedure "gtk_about_dialog_get_website_label" (iptr) string))
  ;;
  (define gtk-about-dialog-get-wrap-license
    (foreign-procedure "gtk_about_dialog_get_wrap_license" (iptr) string))
  ;;
  (define gtk-about-dialog-set-artists
    (foreign-procedure "gtk_about_dialog_set_artists" (iptr iptr) void))
  ;;
  (define gtk-about-dialog-set-authors
    (foreign-procedure "gtk_about_dialog_set_authors" (iptr iptr) void))
  ;;
  (define gtk-about-dialog-set-comments
    (foreign-procedure "gtk_about_dialog_set_comments" (iptr iptr) void))
  ;;
  (define gtk-about-dialog-set-copyright
    (foreign-procedure "gtk_about_dialog_set_copyright" (iptr string) void))
  ;;
  (define gtk-about-dialog-set-documenters
    (foreign-procedure "gtk_about_dialog_set_documenters" (iptr iptr) void))
  ;;
  (define gtk-about-dialog-set-license
    (foreign-procedure "gtk_about_dialog_set_license" (iptr string) void))
  ;;
  (define gtk-about-dialog-set-license-type
    (foreign-procedure "gtk_about_dialog_set_license_type" (iptr string) void))
  ;;
  (define gtk-about-dialog-set-logo
    (foreign-procedure "gtk_about_dialog_set_logo" (iptr iptr) void))
  ;;
  (define gtk-about-dialog-set-logo-icon-name
    (foreign-procedure "gtk_about_dialog_set_logo_icon_name"
		       (iptr string) void))
  ;;
  (define gtk-about-dialog-set-program-name
    (foreign-procedure "gtk_about_dialog_set_program_name" (iptr string) void))
  ;;
  (define gtk-about-dialog-set-system-information
    (foreign-procedure "gtk_about_dialog_set_system_information"
		       (iptr string) void))
  ;;
  (define gtk-about-dialog-set-translator-credits
    (foreign-procedure "gtk_about_dialog_set_translator_credits"
		       (iptr iptr) void))
  ;;
  (define gtk-about-dialog-set-version
    (foreign-procedure "gtk_about_dialog_set_version" (iptr string) void))
  ;;
  (define gtk-about-dialog-set-website
    (foreign-procedure "gtk_about_dialog_set_website" (iptr string) void))
  ;;
  (define gtk-about-dialog-set-website-label
    (foreign-procedure "gtk_about_dialog_set_website_label"
		       (iptr string) void))
  ;;
  (define gtk-about-dialog-set-wrap-license
    (foreign-procedure "gtk_about_dialog_set_wrap_license" (iptr string) void))
  ;;
  (define gtk-action-bar-new
    (foreign-procedure "gtk_action_bar_new" () iptr))
  ;;
  (define gtk-action-bar-get-center-widget
    (foreign-procedure "gtk_action_bar_get_center_widget" (iptr) iptr))
  ;;
  (define gtk-action-bar-get-revealed
    (foreign-procedure "gtk_action_bar_get_revealed" (iptr) int))
  ;;
  (define gtk-action-bar-pack-end
    (foreign-procedure "gtk_action_bar_pack_end" (iptr iptr) void))
  ;;
  (define gtk-action-bar-pack-start
    (foreign-procedure "gtk_action_bar_pack_start" (iptr iptr) void))
  ;;
  (define gtk-action-bar-remove
    (foreign-procedure "gtk_action_bar_remove" (iptr iptr) void))
  ;;
  (define gtk-action-bar-set-center-widget
    (foreign-procedure "gtk_action_bar_set_center_widget" (iptr iptr) void))
  ;;
  (define gtk-action-bar-set-revealed
    (foreign-procedure "gtk_action_bar_set_revealed" (iptr int) void))
  ;;
  (define gtk-activate-action-get
    (foreign-procedure "gtk_activate_action_get" () iptr))
  ;;
  (define gtk-adjustment-new
    (foreign-procedure "gtk_adjustment_new" () iptr))
  ;;
  (define gtk-adjustment-clamp-page
    (foreign-procedure "gtk_adjustment_clamp_page" (iptr double double) void))
  ;;
  (define gtk-adjustment-configure
    (foreign-procedure "gtk_adjustment_configure"
		       (iptr double double double double double double) iptr))
  ;;
  (define gtk-adjustment-get-lower
    (foreign-procedure "gtk_adjustment_get_lower" (iptr) double))
  ;;
  (define gtk-adjustment-get-minimum-increment
    (foreign-procedure "gtk_adjustment_get_minimum_increment" (iptr) double))
  ;;
  (define gtk-adjustment-get-page-increment
    (foreign-procedure "gtk_adjustment_get_page_increment" (iptr) double))
  ;;
  (define gtk-adjustment-get-page-size
    (foreign-procedure "gtk_adjustment_get_page_size" (iptr) double))
  ;;
  (define gtk-adjustment-get-step-increment
    (foreign-procedure "gtk_adjustment_get_step_increment" (iptr) double))
  ;;
  (define gtk-adjustment-get-upper
    (foreign-procedure "gtk_adjustment_get_upper" (iptr) double))
  ;;
  (define gtk-adjustment-get-value
    (foreign-procedure "gtk_adjustment_get_value" (iptr) double))
  ;;
  (define gtk-adjustment-set-lower
    (foreign-procedure "gtk_adjustment_set_lower" (iptr double) void))
  ;;
  (define gtk-adjustment-set-page-increment
    (foreign-procedure "gtk_adjustment_set_page_increment" (iptr double) void))
  ;;
  (define gtk-adjustment-set-page-size
    (foreign-procedure "gtk_adjustment_set_page_size" (iptr double) void))
  ;;
  (define gtk-adjustment-set-step-increment
    (foreign-procedure "gtk_adjustment_set_step_increment" (iptr double) void))
  ;;
  (define gtk-adjustment-set-upper
    (foreign-procedure "gtk_adjustment_set_upper" (iptr double) void))
  ;;
  (define gtk-adjustment-set-value
    (foreign-procedure "gtk_adjustment_set_value" (iptr double) void))
  ;;
  (define gtk-alternative-trigger-new
    (foreign-procedure "gtk_alternative_trigger_new" () iptr))
  ;;
  (define gtk-alternative-trigger-get-first
    (foreign-procedure "gtk_alternative_trigger_get_first" (iptr) iptr))
  ;;
  (define gtk-alternative-trigger-get-second
    (foreign-procedure "gtk_alternative_trigger_get_second" (iptr) iptr))
  ;;
  (define gtk-any-filter-new
    (foreign-procedure "gtk_any_filter_new" () iptr))
  ;;
  (define gtk-app-chooser-button-new
    (foreign-procedure "gtk_app_chooser_button_new" () iptr))
  ;;
  (define gtk-app-chooser-button-append-custom-item
    (foreign-procedure "gtk_app_chooser_button_append_custom_item"
		       (iptr string string iptr) void))
  ;;
  (define gtk-app-chooser-button-append-separator
    (foreign-procedure "gtk_app_chooser_button_append_separator" (iptr) void))
  ;;
  (define gtk-app-chooser-button-get-heading
    (foreign-procedure "gtk_app_chooser_button_get_heading" (iptr) string))
  ;;
  (define gtk-app-chooser-button-get-modal
    (foreign-procedure "gtk_app_chooser_button_get_modal" (iptr) int))
  ;;
  (define gtk-app-chooser-button-get-show-default-item
    (foreign-procedure "gtk_app_chooser_button_get_show_default_item"
		       (iptr) int))
  ;;
  (define gtk-app-chooser-button-get-show-dialog-item
    (foreign-procedure "gtk_app_chooser_button_get_show_dialog_item"
		       (iptr) int))
  ;;
  (define gtk-app-chooser-button-set-active-custom-item
    (foreign-procedure "gtk_app_chooser_button_set_active_custom_item"
		       (iptr string) void))
  ;;
  (define gtk-app-chooser-button-set-heading
    (foreign-procedure "gtk_app_chooser_button_set_heading"
		       (iptr string) void))
  ;;
  (define gtk-app-chooser-button-set-modal
    (foreign-procedure "gtk_app_chooser_button_set_modal" (iptr int) void))
  ;;
  (define gtk-app-chooser-button-set-show-default-item
    (foreign-procedure "gtk_app_chooser_button_set_show_default_item"
		       (iptr int) void))
  ;;
  (define gtk-app-chooser-button-set-show-dialog-item
    (foreign-procedure "gtk_app_chooser_button_set_show_dialog_item"
		       (iptr int) void))
  ;;
  (define gtk-app-chooser-dialog-new
    (foreign-procedure "gtk_app_chooser_dialog_new" (iptr int iptr) iptr))
  ;;
  (define gtk-app-chooser-dialog-new-for-content-type
    (foreign-procedure "gtk_app_chooser_dialog_new_for_content_type"
		       (iptr int string) iptr))
  ;;
  (define gtk-app-chooser-dialog-get-heading
    (foreign-procedure "gtk_app_chooser_dialog_get_heading" (iptr) string))
  ;;
  (define gtk-app-chooser-dialog-get-widget
    (foreign-procedure "gtk_app_chooser_dialog_get_widget" (iptr) iptr))
  ;;
  (define gtk-app-chooser-dialog-set-heading
    (foreign-procedure "gtk_app_chooser_dialog_set_heading"
		       (iptr string) void))
  ;;
  (define gtk-app-chooser-widget-new
    (foreign-procedure "gtk_app_chooser_widget_new" () iptr))
  ;;
  (define gtk-app-chooser-widget-get-default-text
    (foreign-procedure "gtk_app_chooser_widget_get_default_text"
		       (iptr) string))
  ;;
  (define gtk-app-chooser-widget-get-show-all
    (foreign-procedure "gtk_app_chooser_widget_get_show_all" (iptr) int))
  ;;
  (define gtk-app-chooser-widget-get-show-default
    (foreign-procedure "gtk_app_chooser_widget_get_show_default" (iptr) int))
  ;;
  (define gtk-app-chooser-widget-get-show-fallback
    (foreign-procedure "gtk_app_chooser_widget_get_show_fallback" (iptr) int))
  ;;
  (define gtk-app-chooser-widget-get-show-other
    (foreign-procedure "gtk_app_chooser_widget_get_show_other" (iptr) int))
  ;;
  (define gtk-app-chooser-widget-get-show-recommended
    (foreign-procedure "gtk_app_chooser_widget_get_show_recommended"
		       (iptr) int))
  ;;
  (define gtk-app-chooser-widget-set-default-text
    (foreign-procedure "gtk_app_chooser_widget_set_default_text"
		       (iptr string) void))
  ;;
  (define gtk-app-chooser-widget-set-show-all
    (foreign-procedure "gtk_app_chooser_widget_set_show_all" (iptr int) void))
  ;;
  (define gtk-app-chooser-widget-set-show-default
    (foreign-procedure "gtk_app_chooser_widget_set_show_default"
		       (iptr int) void))
  ;;
  (define gtk-app-chooser-widget-set-show-fallback
    (foreign-procedure "gtk_app_chooser_widget_set_show_fallback"
		       (iptr int) void))
  ;;
  (define gtk-app-chooser-widget-set-show-other
    (foreign-procedure "gtk_app_chooser_widget_set_show_other"
		       (iptr int) void))
  ;;
  (define gtk-app-chooser-widget-set-show-recommended
    (foreign-procedure "gtk_app_chooser_widget_set_show_recommended"
		       (iptr int) void))
  ;;
  (define gtk-application-new
    (foreign-procedure "gtk_application_new" (string int) iptr))
  ;;
  (define gtk-application-add-window
    (foreign-procedure "gtk_application_add_window" (iptr iptr) void))
  ;;
  (define gtk-application-get-accels-for-action
    (foreign-procedure "gtk_application_get_accels_for_action"
		       (iptr string) iptr))
  ;;
  (define gtk-application-get-actions-for-accel
    (foreign-procedure "gtk_application_get_actions_for_accel"
		       (iptr string) iptr))
  ;;
  (define gtk-application-get-active-window
    (foreign-procedure "gtk_application_get_active_window" (iptr) iptr))
  ;;
  (define gtk-application-get-menu-by-id
    (foreign-procedure "gtk_application_get_menu_by_id" (iptr string) iptr))
  ;;
  (define gtk-application-get-menubar
    (foreign-procedure "gtk_application_get_menubar" (iptr) iptr))
  ;;
  (define gtk-application-get-window-by-id
    (foreign-procedure "gtk_application_get_window_by_id" (iptr int) iptr))
  ;;
  (define gtk-application-get-windows
    (foreign-procedure "gtk_application_get_windows" (iptr) iptr))
  ;;
  (define gtk-application-inhibit
    (foreign-procedure "gtk_application_inhibit" (iptr iptr int string) int))
  ;;
  (define gtk-application-list-action-descriptions
    (foreign-procedure "gtk_application_list_action_descriptions" (iptr) iptr))
  ;;
  (define gtk-application-remove-window
    (foreign-procedure "gtk_application_remove_window" (iptr iptr) void))
  ;;
  (define gtk-application-set-accels-for-action
    (foreign-procedure "gtk_application_set_accels_for_action"
		       (iptr string iptr) void))
  ;;
  (define gtk-application-set-menubar
    (foreign-procedure "gtk_application_set_menubar" (iptr iptr) void))
  ;;
  (define gtk-application-uninhibit
    (foreign-procedure "gtk_application_uninhibit" (iptr int) void))
  ;;
  (define gtk-application-window-new
    (foreign-procedure "gtk_application_window_new" (iptr) iptr))
  ;;
  (define gtk-application-window-get-help-overlay
    (foreign-procedure "gtk_application_window_get_help_overlay" (iptr) iptr))
  ;;
  (define gtk-application-window-get-id
    (foreign-procedure "gtk_application_window_get_id" (iptr) int))
  ;;
  (define gtk-application-window-get-show-menubar
    (foreign-procedure "gtk_application_window_get_show_menubar" (iptr) int))
  ;;
  (define gtk-application-window-set-help-overlay
    (foreign-procedure "gtk_application_window_set_help_overlay"
		       (iptr iptr) void))
  ;;
  (define gtk-application-window-set-show-menubar
    (foreign-procedure "gtk_application_window_set_show_menubar"
		       (iptr int) void))
  ;;
  (define gtk-aspect-frame-new
    (foreign-procedure "gtk_aspect_frame_new" (float float float int) iptr))
  ;;
  (define gtk-aspect-frame-get-child
    (foreign-procedure "gtk_aspect_frame_get_child" (iptr) iptr))
  ;;
  (define gtk-aspect-frame-get-obey-child
    (foreign-procedure "gtk_aspect_frame_get_obey_child" (iptr) int))
  ;;
  (define gtk-aspect-frame-get-ratio
    (foreign-procedure "gtk_aspect_frame_get_ratio" (iptr) float))
  ;;
  (define gtk-aspect-frame-get-xalign
    (foreign-procedure "gtk_aspect_frame_get_xalign" (iptr) float))
  ;;
  (define gtk-aspect-frame-get-yalign
    (foreign-procedure "gtk_aspect_frame_get_yalign" (iptr) float))
  ;;
  (define gtk-aspect-frame-set-child
    (foreign-procedure "gtk_aspect_frame_set_child" (iptr iptr) void))
  ;;
  (define gtk-aspect-frame-set-obey-child
    (foreign-procedure "gtk_aspect_frame_set_obey_child" (iptr int) void))
  ;;
  (define gtk-aspect-frame-set-ratio
    (foreign-procedure "gtk_aspect_frame_set_ratio" (iptr float) void))
  ;;
  (define gtk-aspect-frame-set-xalign
    (foreign-procedure "gtk_aspect_frame_set_xalign" (iptr float) void))
  ;;
  (define gtk-aspect-frame-set-yalign
    (foreign-procedure "gtk_aspect_frame_set_yalign" (iptr float) void))
  ;;
  (define gtk-assistant-new
    (foreign-procedure "gtk_assistant_new" () iptr))
  ;;
  (define gtk-assistant-add-action-widget
    (foreign-procedure "gtk_assistant_add_action_widget" (iptr iptr) void))
  ;;
  (define gtk-assistant-append-page
    (foreign-procedure "gtk_assistant_append_page" (iptr iptr) int))
  ;;
  (define gtk-assistant-commit
    (foreign-procedure "gtk_assistant_commit" (iptr) void))
  ;;
  (define gtk-assistant-get-current-page
    (foreign-procedure "gtk_assistant_get_current_page" (iptr) int))
  ;;
  (define gtk-assistant-get-n-pages
    (foreign-procedure "gtk_assistant_get_n_pages" (iptr) int))
  ;;
  (define gtk-assistant-get-nth-page
    (foreign-procedure "gtk_assistant_get_nth_page" (iptr int) iptr))
  ;;
  (define gtk-assistant-get-page
    (foreign-procedure "gtk_assistant_get_page" (iptr iptr) iptr))
  ;;
  (define gtk-assistant-get-page-complete
    (foreign-procedure "gtk_assistant_get_page_complete" (iptr iptr) int))
  ;;
  (define gtk-assistant-get-page-title
    (foreign-procedure "gtk_assistant_get_page_title" (iptr iptr) string))
  ;;
  (define gtk-assistant-get-page-type
    (foreign-procedure "gtk_assistant_get_page_type" (iptr iptr) iptr))
  ;;
  (define gtk-assistant-get-pages
    (foreign-procedure "gtk_assistant_get_pages" (iptr) iptr))
  ;;
  (define gtk-assistant-insert-page
    (foreign-procedure "gtk_assistant_insert_page" (iptr iptr int) int))
  ;;
  (define gtk-assistant-next-page
    (foreign-procedure "gtk_assistant_next_page" (iptr) void))
  ;;
  (define gtk-assistant-prepend-page
    (foreign-procedure "gtk_assistant_prepend_page" (iptr iptr) int))
  ;;
  (define gtk-assistant-previous-page
    (foreign-procedure "gtk_assistant_previous_page" (iptr) void))
  ;;
  (define gtk-assistant-remove-action-widget
    (foreign-procedure "gtk_assistant_remove_action_widget" (iptr iptr) void))
  ;;
  (define gtk-assistant-remove-page
    (foreign-procedure "gtk_assistant_remove_page" (iptr int) void))
  ;;
  (define gtk-assistant-set-current-page
    (foreign-procedure "gtk_assistant_set_current_page" (iptr int) void))
  ;;
  (define gtk-assistant-set-forward-page-func
    (foreign-procedure "gtk_assistant_set_forward_page_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-assistant-set-page-complete
    (foreign-procedure "gtk_assistant_set_page_complete" (iptr iptr int) void))
  ;;
  (define gtk-assistant-set-page-title
    (foreign-procedure "gtk_assistant_set_page_title" (iptr iptr string) void))
  ;;
  (define gtk-assistant-set-page-type
    (foreign-procedure "gtk_assistant_set_page_type" (iptr iptr iptr) void))
  ;;
  (define gtk-assistant-update-buttons-state
    (foreign-procedure "gtk_assistant_update_buttons_state" (iptr) void))
  ;;
  (define gtk-assistant-page-get-child
    (foreign-procedure "gtk_assistant_page_get_child" (iptr) iptr))
  ;;
  (define gtk-at-context-create
    (foreign-procedure "gtk_at_context_create" (iptr iptr iptr) iptr))
  ;;
  (define gtk-at-context-get-accessible
    (foreign-procedure "gtk_at_context_get_accessible" (iptr) iptr))
  ;;
  (define gtk-at-context-get-accessible-role
    (foreign-procedure "gtk_at_context_get_accessible_role" (iptr) iptr))
  ;;
  (define gtk-bin-layout-new
    (foreign-procedure "gtk_bin_layout_new" () iptr))
  ;;
  (define gtk-bookmark-list-new
    (foreign-procedure "gtk_bookmark_list_new" (string string) iptr))
  ;;
  (define gtk-bookmark-list-get-attributes
    (foreign-procedure "gtk_bookmark_list_get_attributes" (iptr) string))
  ;;
  (define gtk-bookmark-list-get-filename
    (foreign-procedure "gtk_bookmark_list_get_filename" (iptr) string))
  ;;
  (define gtk-bookmark-list-get-io-priority
    (foreign-procedure "gtk_bookmark_list_get_io_priority" (iptr) int))
  ;;
  (define gtk-bookmark-list-is-loading
    (foreign-procedure "gtk_bookmark_list_is_loading" (iptr) int))
  ;;
  (define gtk-bookmark-list-set-attributes
    (foreign-procedure "gtk_bookmark_list_set_attributes" (iptr string) void))
  ;;
  (define gtk-bookmark-list-set-io-priority
    (foreign-procedure "gtk_bookmark_list_set_io_priority" (iptr int) void))
  ;;
  (define gtk-bool-filter-new
    (foreign-procedure "gtk_bool_filter_new" (iptr) iptr))
  ;;
  (define gtk-bool-filter-get-expression
    (foreign-procedure "gtk_bool_filter_get_expression" (iptr) iptr))
  ;;
  (define gtk-bool-filter-get-invert
    (foreign-procedure "gtk_bool_filter_get_invert" (iptr) iptr))
  ;;
  (define gtk-bool-filter-set-expression
    (foreign-procedure "gtk_bool_filter_set_expression" (iptr iptr) void))
  ;;
  (define gtk-bool-filter-set-invert
    (foreign-procedure "gtk_bool_filter_set_invert" (iptr int) void))
  ;;
  (define gtk-box-new
    (foreign-procedure "gtk_box_new" (int int) iptr))
  ;;
  (define gtk-box-append
    (foreign-procedure "gtk_box_append" (iptr iptr) void))
  ;;
  (define gtk-box-get-baseline-position
    (foreign-procedure "gtk_box_get_baseline_position" (iptr) iptr))
  ;;
  (define gtk-box-get-homogeneous
    (foreign-procedure "gtk_box_get_homogeneous" (iptr) int))
  ;;
  (define gtk-box-get-spacing
    (foreign-procedure "gtk_box_get_spacing" (iptr) int))
  ;;
  (define gtk-box-insert-child-after
    (foreign-procedure "gtk_box_insert_child_after" (iptr iptr iptr) void))
  ;;
  (define gtk-box-prepend
    (foreign-procedure "gtk_box_prepend" (iptr iptr) void))
  ;;
  (define gtk-box-remove
    (foreign-procedure "gtk_box_remove" (iptr iptr) void))
  ;;
  (define gtk-box-reorder-child-after
    (foreign-procedure "gtk_box_reorder_child_after" (iptr iptr iptr) void))
  ;;
  (define gtk-box-set-baseline-position
    (foreign-procedure "gtk_box_set_baseline_position" (iptr iptr) void))
  ;;
  (define gtk-box-set-homogeneous
    (foreign-procedure "gtk_box_set_homogeneous" (iptr int) void))
  ;;
  (define gtk-box-set-spacing
    (foreign-procedure "gtk_box_set_spacing" (iptr int) void))
  ;;
  (define gtk-box-layout-new
    (foreign-procedure "gtk_box_layout_new" (iptr) iptr))
  ;;
  (define gtk-box-layout-get-baseline-position
    (foreign-procedure "gtk_box_layout_get_baseline_position" (iptr) iptr))
  ;;
  (define gtk-box-layout-get-homogeneous
    (foreign-procedure "gtk_box_layout_get_homogeneous" (iptr) int))
  ;;
  (define gtk-box-layout-get-spacing
    (foreign-procedure "gtk_box_layout_get_spacing" (iptr) int))
  ;;
  (define gtk-box-layout-set-baseline-position
    (foreign-procedure "gtk_box_layout_set_baseline_position"
		       (iptr iptr) void))
  ;;
  (define gtk-box-layout-set-homogeneous
    (foreign-procedure "gtk_box_layout_set_homogeneous" (iptr int) void))
  ;;
  (define gtk-box-layout-set-spacing
    (foreign-procedure "gtk_box_layout_set_spacing" (iptr int) void))
  ;;
  (define gtk-button-new
    (foreign-procedure "gtk_button_new" () iptr))
  ;;
  (define gtk-button-new-from-icon-name
    (foreign-procedure "gtk_button_new_from_icon_name" (string) iptr))
  ;;
  (define gtk-button-new-with-label
    (foreign-procedure "gtk_button_new_with_label" (string) iptr))
  ;;
  (define gtk-button-new-with-mnemonic
    (foreign-procedure "gtk_button_new_with_mnemonic" (string) iptr))
  ;;
  (define gtk-button-get-child
    (foreign-procedure "gtk_button_get_child" (iptr) iptr))
  ;;
  (define gtk-button-get-has-frame
    (foreign-procedure "gtk_button_get_has_frame" (iptr) int))
  ;;
  (define gtk-button-get-icon-name
    (foreign-procedure "gtk_button_get_icon_name" (iptr) string))
  ;;
  (define gtk-button-get-label
    (foreign-procedure "gtk_button_get_label" (iptr) string))
  ;;
  (define gtk-button-get-use-underline
    (foreign-procedure "gtk_button_get_use_underline" (iptr) int))
  ;;
  (define gtk-button-set-child
    (foreign-procedure "gtk_button_set_child" (iptr iptr) void))
  ;;
  (define gtk-button-set-has-frame
    (foreign-procedure "gtk_button_set_has_frame" (iptr int) void))
  ;;
  (define gtk-button-set-icon-name
    (foreign-procedure "gtk_button_set_icon_name" (iptr string) void))
  ;;
  (define gtk-button-set-label
    (foreign-procedure "gtk_button_set_label" (iptr string) void))
  ;;
  (define gtk-button-set-use-underline
    (foreign-procedure "gtk_button_set_use_underline" (iptr int) void))
  ;;
  (define gtk-calendar-new
    (foreign-procedure "gtk_calendar_new" () iptr))
  ;;
  (define gtk-calendar-clear-marks
    (foreign-procedure "gtk_calendar_clear_marks" (iptr) void))
  ;;
  (define gtk-calendar-get-date
    (foreign-procedure "gtk_calendar_get_date" (iptr) iptr))
  ;;
  (define gtk-calendar-get-day-is-marked
    (foreign-procedure "gtk_calendar_get_day_is_marked" (iptr int) int))
  ;;
  (define gtk-calendar-get-show-day-names
    (foreign-procedure "gtk_calendar_get_show_day_names" (iptr) int))
  ;;
  (define gtk-calendar-get-show-heading
    (foreign-procedure "gtk_calendar_get_show_heading" (iptr) int))
  ;;
  (define gtk-calendar-get-show-week-numbers
    (foreign-procedure "gtk_calendar_get_show_week_numbers" (iptr) int))
  ;;
  (define gtk-calendar-mark-day
    (foreign-procedure "gtk_calendar_mark_day" (iptr int) void))
  ;;
  (define gtk-calendar-select-day
    (foreign-procedure "gtk_calendar_select_day" (iptr iptr) void))
  ;;
  (define gtk-calendar-set-show-day-names
    (foreign-procedure "gtk_calendar_set_show_day_names" (iptr int) void))
  ;;
  (define gtk-calendar-set-show-heading
    (foreign-procedure "gtk_calendar_set_show_heading" (iptr int) void))
  ;;
  (define gtk-calendar-set-show-week-numbers
    (foreign-procedure "gtk_calendar_set_show_week_numbers" (iptr int) void))
  ;;
  (define gtk-calendar-unmark-day
    (foreign-procedure "gtk_calendar_unmark_day" (iptr int) void))
  ;;
  (define gtk-callback-action-new
    (foreign-procedure "gtk_callback_action_new" (iptr iptr iptr) iptr))
  ;;
  (define gtk-cclosure-expression-new
    (foreign-procedure "gtk_cclosure_expression_new"
		       (iptr iptr int iptr iptr iptr iptr) iptr))
  ;;
  (define gtk-cell-area-activate
    (foreign-procedure "gtk_cell_area_activate"
		       (iptr iptr iptr iptr iptr int) int))
  ;;
  (define gtk-cell-area-activate-cell
    (foreign-procedure "gtk_cell_area_activate_cell"
		       (iptr iptr iptr iptr iptr iptr) int))
  ;;
  (define gtk-cell-area-add
    (foreign-procedure "gtk_cell_area_add" (iptr iptr) void))
  ;;
  (define gtk-cell-area-add-focus-sibling
    (foreign-procedure "gtk_cell_area_add_focus_sibling"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-add-with-properties
    (foreign-procedure "gtk_cell_area_add_with_properties"
		       (iptr iptr string) void))
  ;;
  (define gtk-cell-area-apply-attributes
    (foreign-procedure "gtk_cell_area_apply_attributes"
		       (iptr iptr iptr int int) void))
  ;;
  (define gtk-cell-area-attribute-connect
    (foreign-procedure "gtk_cell_area_attribute_connect"
		       (iptr iptr string int) void))
  ;;
  (define gtk-cell-area-attribute-disconnect
    (foreign-procedure "gtk_cell_area_attribute_disconnect"
		       (iptr iptr string) void))
  ;;
  (define gtk-cell-area-attribute-get-column
    (foreign-procedure "gtk_cell_area_attribute_get_column"
		       (iptr iptr string) int))
  ;;
  (define gtk-cell-area-cell-get
    (foreign-procedure "gtk_cell_area_cell_get" (iptr iptr string) void))
  ;;
  (define gtk-cell-area-cell-get-property
    (foreign-procedure "gtk_cell_area_cell_get_property"
		       (iptr iptr string iptr) void))
  ;;
  (define gtk-cell-area-cell-get-valist
    (foreign-procedure "gtk_cell_area_cell_get_valist"
		       (iptr iptr string iptr) void))
  ;;
  (define gtk-cell-area-cell-set
    (foreign-procedure "gtk_cell_area_cell_set" (iptr iptr string) void))
  ;;
  (define gtk-cell-area-cell-set-property
    (foreign-procedure "gtk_cell_area_cell_set_property"
		       (iptr iptr string iptr) void))
  ;;
  (define gtk-cell-area-cell-set-valist
    (foreign-procedure "gtk_cell_area_cell_set_valist"
		       (iptr iptr string iptr) void))
  ;;
  (define gtk-cell-area-copy-context
    (foreign-procedure "gtk_cell_area_copy_context" (iptr iptr) iptr))
  ;;
  (define gtk-cell-area-create-context
    (foreign-procedure "gtk_cell_area_create_context" (iptr) iptr))
  ;;
  (define gtk-cell-area-event
    (foreign-procedure "gtk_cell_area_event"
		       (iptr iptr iptr iptr iptr iptr) int))
  ;;
  (define gtk-cell-area-focus
    (foreign-procedure "gtk_cell_area_focus" (iptr iptr) int))
  ;;
  (define gtk-cell-area-foreach
    (foreign-procedure "gtk_cell_area_foreach" (iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-foreach-alloc
    (foreign-procedure "gtk_cell_area_foreach_alloc"
		       (iptr iptr iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-get-cell-allocation
    (foreign-procedure "gtk_cell_area_get_cell_allocation"
		       (iptr iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-get-cell-at-position
    (foreign-procedure "gtk_cell_area_get_cell_at_position"
		       (iptr iptr iptr iptr int int iptr) iptr))
  ;;
  (define gtk-cell-area-get-current-path-string
    (foreign-procedure "gtk_cell_area_get_current_path_string" (iptr) string))
  ;;
  (define gtk-cell-area-get-edit-widget
    (foreign-procedure "gtk_cell_area_get_edit_widget" (iptr) iptr))
  ;;
  (define gtk-cell-area-get-edited-cell
    (foreign-procedure "gtk_cell_area_get_edited_cell" (iptr) iptr))
  ;;
  (define gtk-cell-area-get-focus-cell
    (foreign-procedure "gtk_cell_area_get_focus_cell" (iptr) iptr))
  ;;
  (define gtk-cell-area-get-focus-from-sibling
    (foreign-procedure "gtk_cell_area_get_focus_from_sibling"
		       (iptr iptr) void))
  ;;
  (define gtk-cell-area-get-focus-siblings
    (foreign-procedure "gtk_cell_area_get_focus_siblings" (iptr iptr) iptr))
  ;;
  (define gtk-cell-area-get-preferred-height
    (foreign-procedure "gtk_cell_area_get_preferred_height"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-get-preferred-height-for-width
    (foreign-procedure "gtk_cell_area_get_preferred_height_for_width"
		       (iptr iptr iptr int int) void))
  ;;
  (define gtk-cell-area-get-preferred-width
    (foreign-procedure "gtk_cell_area_get_preferred_width"
		       (iptr iptr iptr int int) void))
  ;;
  (define gtk-cell-area-get-preferred-width-for-height
    (foreign-procedure "gtk_cell_area_get_preferred_width_for_height"
		       (iptr iptr iptr int int int) void))
  ;;
  (define gtk-cell-area-get-request-mode
    (foreign-procedure "gtk_cell_area_get_request_mode" (iptr) iptr))
  ;;
  (define gtk-cell-area-has-renderer
    (foreign-procedure "gtk_cell_area_has_renderer" (iptr iptr) int))
  ;;
  (define gtk-cell-area-inner-cell-area
    (foreign-procedure "gtk_cell_area_inner_cell_area"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-is-activatable
    (foreign-procedure "gtk_cell_area_is_activatable" (iptr) int))
  ;;
  (define gtk-cell-area-is-focus-sibling
    (foreign-procedure "gtk_cell_area_is_focus_sibling" (iptr iptr iptr) int))
  ;;
  (define gtk-cell-area-remove
    (foreign-procedure "gtk_cell_area_remove" (iptr iptr) void))
  ;;
  (define gtk-cell-area-remove-focus-sibling
    (foreign-procedure "gtk_cell_area_remove_focus_sibling"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-cell-area-request-renderer
    (foreign-procedure "gtk_cell_area_request_renderer"
		       (iptr iptr iptr iptr int int int) void))
  ;;
  (define gtk-cell-area-set-focus-cell
    (foreign-procedure "gtk_cell_area_set_focus_cell" (iptr iptr) void))
  ;;
  (define gtk-cell-area-snapshot
    (foreign-procedure "gtk_cell_area_snapshot"
		       (iptr iptr iptr iptr iptr iptr iptr int) void))
  ;;
  (define gtk-cell-area-stop-editing
    (foreign-procedure "gtk_cell_area_stop_editing" (iptr int) void))
  ;;
  (define gtk-cell-area-box-new
    (foreign-procedure "gtk_cell_area_box_new" () iptr))
  ;;
  (define gtk-cell-area-box-get-spacing
    (foreign-procedure "gtk_cell_area_box_get_spacing" (iptr) int))
  ;;
  (define gtk-cell-area-box-pack-end
    (foreign-procedure "gtk_cell_area_box_pack_end"
		       (iptr iptr int int int) void))
  ;;
  (define gtk-cell-area-box-pack-start
    (foreign-procedure "gtk_cell_area_box_pack_start"
		       (iptr iptr int int int) void))
  ;;
  (define gtk-cell-area-box-set-spacing
    (foreign-procedure "gtk_cell_area_box_set_spacing" (iptr int) void))
  ;;
  (define gtk-cell-area-context-allocate
    (foreign-procedure "gtk_cell_area_context_allocate" (iptr int int) void))
  ;;
  (define gtk-cell-area-context-get-allocation
    (foreign-procedure "gtk_cell_area_context_get_allocation"
		       (iptr int int) void))
  ;;
  (define gtk-cell-area-context-get-area
    (foreign-procedure "gtk_cell_area_context_get_area" (iptr) iptr))
  ;;
  (define gtk-cell-area-context-get-preferred-height
    (foreign-procedure "gtk_cell_area_context_get_preferred_height"
		       (iptr int int) void))
  ;;
  (define gtk-cell-area-context-get-preferred-height-for-width
    (foreign-procedure "gtk_cell_area_context_get_preferred_height_for_width"
		       (iptr int int int) void))
  ;;
  (define gtk-cell-area-context-get-preferred-width
    (foreign-procedure "gtk_cell_area_context_get_preferred_width"
		       (iptr int int) void))
  ;;
  (define gtk-cell-area-context-get-preferred-width-for-height
    (foreign-procedure "gtk_cell_area_context_get_preferred_width_for_height"
		       (iptr int int int) void))
  ;;
  (define gtk-cell-area-context-push-preferred-height
    (foreign-procedure "gtk_cell_area_context_push_preferred_height"
		       (iptr int int) void))
  ;;
  (define gtk-cell-area-context-push-preferred-width
    (foreign-procedure "gtk_cell_area_context_push_preferred_width"
		       (iptr int int) void))
  ;;
  (define gtk-cell-area-context-reset
    (foreign-procedure "gtk_cell_area_context_reset" (iptr) void))
  ;;
  (define gtk-cell-renderer-activate
    (foreign-procedure "gtk_cell_renderer_activate"
		       (iptr iptr iptr string iptr iptr iptr) int))
  ;;
  (define gtk-cell-renderer-get-aligned-area
    (foreign-procedure "gtk_cell_renderer_get_aligned_area"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-renderer-get-alignment
    (foreign-procedure "gtk_cell_renderer_get_alignment" (iptr float) void))
  ;;
  (define gtk-cell-renderer-get-fixed-size
    (foreign-procedure "gtk_cell_renderer_get_fixed_size" (iptr int int) void))
  ;;
  (define gtk-cell-renderer-get-is-expanded
    (foreign-procedure "gtk_cell_renderer_get_is_expanded" (iptr) int))
  ;;
  (define gtk-cell-renderer-get-is-expander
    (foreign-procedure "gtk_cell_renderer_get_is_expander" (iptr) int))
  ;;
  (define gtk-cell-renderer-get-padding
    (foreign-procedure "gtk_cell_renderer_get_padding" (iptr int) void))
  ;;
  (define gtk-cell-renderer-get-preferred-height
    (foreign-procedure "gtk_cell_renderer_get_preferred_height"
		       (iptr iptr int int) void))
  ;;
  (define gtk-cell-renderer-get-preferred-height-for-width
    (foreign-procedure "gtk_cell_renderer_get_preferred_height_for_width"
		       (iptr iptr int int int) void))
  ;;
  (define gtk-cell-renderer-get-preferred-size
    (foreign-procedure "gtk_cell_renderer_get_preferred_size"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-renderer-get-preferred-width
    (foreign-procedure "gtk_cell_renderer_get_preferred_width"
		       (iptr iptr int int) void))
  ;;
  (define gtk-cell-renderer-get-preferred-width-for-height
    (foreign-procedure "gtk_cell_renderer_get_preferred_width_for_height"
		       (iptr iptr int int int) void))
  ;;
  (define gtk-cell-renderer-get-request-mode
    (foreign-procedure "gtk_cell_renderer_get_request_mode" (iptr) iptr))
  ;;
  (define gtk-cell-renderer-get-sensitive
    (foreign-procedure "gtk_cell_renderer_get_sensitive" (iptr) int))
  ;;
  (define gtk-cell-renderer-get-state
    (foreign-procedure "gtk_cell_renderer_get_state" (iptr iptr iptr) int))
  ;;
  (define gtk-cell-renderer-get-visible
    (foreign-procedure "gtk_cell_renderer_get_visible" (iptr) int))
  ;;
  (define gtk-cell-renderer-is-activatable
    (foreign-procedure "gtk_cell_renderer_is_activatable" (iptr) int))
  ;;
  (define gtk-cell-renderer-set-alignment
    (foreign-procedure "gtk_cell_renderer_set_alignment"
		       (iptr float float) void))
  ;;
  (define gtk-cell-renderer-set-fixed-size
    (foreign-procedure "gtk_cell_renderer_set_fixed_size" (iptr int int) void))
  ;;
  (define gtk-cell-renderer-set-is-expanded
    (foreign-procedure "gtk_cell_renderer_set_is_expanded" (iptr int) void))
  ;;
  (define gtk-cell-renderer-set-is-expander
    (foreign-procedure "gtk_cell_renderer_set_is_expander" (iptr iptr) void))
  ;;
  (define gtk-cell-renderer-set-padding
    (foreign-procedure "gtk_cell_renderer_set_padding" (iptr int int) void))
  ;;
  (define gtk-cell-renderer-set-sensitive
    (foreign-procedure "gtk_cell_renderer_set_sensitive" (iptr int) void))
  ;;
  (define gtk-cell-renderer-set-visible
    (foreign-procedure "gtk_cell_renderer_set_visible" (iptr int) void))
  ;;
  (define gtk-cell-renderer-snapshot
    (foreign-procedure "gtk_cell_renderer_snapshot"
		       (iptr iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-cell-renderer-accel-new
    (foreign-procedure "gtk_cell_renderer_accel_new" () iptr))
  ;;
  (define gtk-cell-renderer-combo-new
    (foreign-procedure "gtk_cell_renderer_combo_new" () iptr))
  ;;
  (define gtk-cell-renderer-pixbuf-new
    (foreign-procedure "gtk_cell_renderer_pixbuf_new" () iptr))
  ;;
  (define gtk-cell-renderer-progress-new
    (foreign-procedure "gtk_cell_renderer_spin_new" () iptr))
  ;;
  (define gtk-cell-renderer-spin-new
    (foreign-procedure "gtk_cell_renderer_spin_new" () iptr))
  ;;
  (define gtk-cell-renderer-spinner-new
    (foreign-procedure "gtk_cell_renderer_spinner_new" () iptr))
  ;;
  (define gtk-cell-renderer-text-new
    (foreign-procedure "gtk_cell_renderer_text_new" () iptr))
  ;;
  (define gtk-cell-renderer-text-set-fixed-height-from-font
    (foreign-procedure "gtk_cell_renderer_text_set_fixed_height_from_font"
		       (iptr int) void))
  ;;
  (define gtk-cell-renderer-toggle-new
    (foreign-procedure "gtk_cell_renderer_toggle_new" () iptr))
  ;;
  (define gtk-cell-renderer-toggle-get-activatable
    (foreign-procedure "gtk_cell_renderer_toggle_get_activatable" (iptr) int))
  ;;
  (define gtk-cell-renderer-toggle-get-active
    (foreign-procedure "gtk_cell_renderer_toggle_get_active" (iptr) int))
  ;;
  (define gtk-cell-renderer-toggle-get-radio
    (foreign-procedure "gtk_cell_renderer_toggle_get_radio" (iptr) int))
  ;;
  (define gtk-cell-renderer-toggle-set-activatable
    (foreign-procedure "gtk_cell_renderer_toggle_set_activatable"
		       (iptr int) void))
  ;;
  (define gtk-cell-renderer-toggle-set-active
    (foreign-procedure "gtk_cell_renderer_toggle_set_active" (iptr int) void))
  ;;
  (define gtk-cell-renderer-toggle-set-radio
    (foreign-procedure "gtk_cell_renderer_toggle_set_radio" (iptr int) void))
  ;;
  (define gtk-cell-view-new
    (foreign-procedure "gtk_cell_view_new" () iptr))
  ;;
  (define gtk-cell-view-new-with-context
    (foreign-procedure "gtk_cell_view_new_with_context" (iptr iptr) iptr))
  ;;
  (define gtk-cell-view-new-with-markup
    (foreign-procedure "gtk_cell_view_new_with_markup" (string) iptr))
  ;;
  (define gtk-cell-view-new-with-text
    (foreign-procedure "gtk_cell_view_new_with_text" (string) iptr))
  ;;
  (define gtk-cell-view-new-with-texture
    (foreign-procedure "gtk_cell_view_new_with_texture" (iptr) iptr))
  ;;
  (define gtk-cell-view-get-displayed-row
    (foreign-procedure "gtk_cell_view_get_displayed_row" (iptr) iptr))
  ;;
  (define gtk-cell-view-get-draw-sensitive
    (foreign-procedure "gtk_cell_view_get_draw_sensitive" (iptr) int))
  ;;
  (define gtk-cell-view-get-fit-model
    (foreign-procedure "gtk_cell_view_get_fit_model" (iptr) iptr))
  ;;
  (define gtk-cell-view-get-model
    (foreign-procedure "gtk_cell_view_get_model" (iptr) iptr))
  ;;
  (define gtk-cell-view-set-displayed-row
    (foreign-procedure "gtk_cell_view_set_displayed_row" (iptr iptr) void))
  ;;
  (define gtk-cell-view-set-draw-sensitive
    (foreign-procedure "gtk_cell_view_set_draw_sensitive" (iptr int) void))
  ;;
  (define gtk-cell-view-set-fit-model
    (foreign-procedure "gtk_cell_view_set_fit_model" (iptr int) void))
  ;;
  (define gtk-cell-view-set-model
    (foreign-procedure "gtk_cell_view_set_model" (iptr iptr) void))
  ;;
  (define gtk-center-box-new
    (foreign-procedure "gtk_center_box_new" () iptr))
  ;;
  (define gtk-center-box-get-baseline-position
    (foreign-procedure "gtk_center_box_get_baseline_position" (iptr) iptr))
  ;;
  (define gtk-center-box-get-center-widget
    (foreign-procedure "gtk_center_box_get_center_widget" (iptr) iptr))
  ;;
  (define gtk-center-box-get-end-widget
    (foreign-procedure "gtk_center_box_get_end_widget" (iptr) iptr))
  ;;
  (define gtk-center-box-get-start-widget
    (foreign-procedure "gtk_center_box_get_start_widget" (iptr) iptr))
  ;;
  (define gtk-center-box-set-baseline-position
    (foreign-procedure "gtk_center_box_set_baseline_position"
		       (iptr iptr) void))
  ;;
  (define gtk-center-box-set-center-widget
    (foreign-procedure "gtk_center_box_set_center_widget" (iptr iptr) void))
  ;;
  (define gtk-center-box-set-end-widget
    (foreign-procedure "gtk_center_box_set_end_widget" (iptr iptr) void))
  ;;
  (define gtk-center-box-set-start-widget
    (foreign-procedure "gtk_center_box_set_start_widget" (iptr iptr) void))
  ;;
  (define gtk-center-layout-new	       
    (foreign-procedure "gtk_center_layout_new" () iptr))
  ;;
  (define gtk-center-layout-get-baseline-position
    (foreign-procedure "gtk_center_layout_get_baseline_position" (iptr) iptr))
  ;;
  (define gtk-center-layout-get-center-widget
    (foreign-procedure "gtk_center_layout_get_center_widget" (iptr) iptr))
  ;;
  (define gtk-center-layout-get-end-widget
    (foreign-procedure "gtk_center_layout_get_end_widget" (iptr) iptr))
  ;;
  (define gtk-center-layout-get-orientation
    (foreign-procedure "gtk_center_layout_get_orientation" (iptr) iptr))
  ;;
  (define gtk-center-layout-get-start-widget
    (foreign-procedure "gtk_center_layout_get_start_widget" (iptr) iptr))
  ;;
  (define gtk-center-layout-set-baseline-position
    (foreign-procedure "gtk_center_layout_set_baseline_position"
		       (iptr iptr) void))
  ;;
  (define gtk-center-layout-set-center-widget
    (foreign-procedure "gtk_center_layout_set_center_widget"
		       (iptr iptr) void))
  ;;
  (define gtk-center-layout-set-end-widget
    (foreign-procedure "gtk_center_layout_set_end_widget" (iptr iptr) void))
  ;;
  (define gtk-center-layout-set-orientation
    (foreign-procedure "gtk_center_layout_set_orientation" (iptr iptr) void))
  ;;
  (define gtk-center-layout-set-start-widget
    (foreign-procedure "gtk_center_layout_set_start_widget" (iptr iptr) void))
  ;;
  (define gtk-check-button-new
    (foreign-procedure "gtk_check_button_new" () iptr))
  ;;
  (define gtk-check-button-new-with-label
    (foreign-procedure "gtk_check_button_new_with_label" (string) iptr))
  ;;
  (define gtk-check-button-new-with-mnemonic
    (foreign-procedure "gtk_check_button_new_with_mnemonic" (string) iptr))
  ;;
  (define gtk-check-button-get-active
    (foreign-procedure "gtk_check_button_get_active" (iptr) int))
  ;;
  (define gtk-check-button-get-inconsistent
    (foreign-procedure "gtk_check_button_get_inconsistent" (iptr) int))
  ;;
  (define gtk-check-button-get-label
    (foreign-procedure "gtk_check_button_get_label" (iptr) string))
  ;;
  (define gtk-check-button-get-use-underline
    (foreign-procedure "gtk_check_button_get_use_underline" (iptr) int))
  ;;
  (define gtk-check-button-set-active
    (foreign-procedure "gtk_check_button_set_active" (iptr int) void))
  ;;
  (define gtk-check-button-set-group
    (foreign-procedure "gtk_check_button_set_group" (iptr iptr) void))
  ;;
  (define gtk-check-button-set-inconsistent
    (foreign-procedure "gtk_check_button_set_inconsistent" (iptr int) void))
  ;;
  (define gtk-check-button-set-label
    (foreign-procedure "gtk_check_button_set_label" (iptr int) void))
  ;;
  (define gtk-check-button-set-use-underline
    (foreign-procedure "gtk_check_button_set_use_underline" (iptr int) void))
  ;;
  (define gtk-closure-expression-new
    (foreign-procedure "gtk_closure_expression_new" (iptr iptr int iptr) iptr))
  ;;
  (define gtk-color-button-new
    (foreign-procedure "gtk_color_button_new" () iptr))
  ;;
  (define gtk-color-button-new-with-rgba
    (foreign-procedure "gtk_color_button_new_with_rgba" (iptr) iptr))
  ;;
  (define gtk-color-button-get-modal
    (foreign-procedure "gtk_color_button_get_modal" (iptr) int))
  ;;
  (define gtk-color-button-get-title
    (foreign-procedure "gtk_color_button_get_title" (iptr) string))
  ;;
  (define gtk-color-button-set-modal
    (foreign-procedure "gtk_color_button_set_modal" (iptr int) void))
  ;;
  (define gtk-color-button-set-title
    (foreign-procedure "gtk_color_button_set_title" (iptr string) void))
  ;;
  (define gtk-color-chooser-dialog-new
    (foreign-procedure "gtk_color_chooser_dialog_new" (string iptr) iptr))
  ;;
  (define gtk-color-chooser-widget-new
    (foreign-procedure "gtk_color_chooser_widget_new" () iptr))
  ;;
  (define gtk-column-view-new
    (foreign-procedure "gtk_column_view_new" (iptr) iptr))
  ;;
  (define gtk-column-view-append-column
    (foreign-procedure "gtk_column_view_append_column" (iptr iptr) void))
  ;;
  (define gtk-column-view-get-columns
    (foreign-procedure "gtk_column_view_get_columns" (iptr) iptr))
  ;;
  (define gtk-column-view-get-enable-rubberband
    (foreign-procedure "gtk_column_view_get_enable_rubberband" (iptr) int))
  ;;
  (define gtk-column-view-get-model
    (foreign-procedure "gtk_column_view_get_model" (iptr) iptr))
  ;;
  (define gtk-column-view-get-reorderable
    (foreign-procedure "gtk_column_view_get_reorderable" (iptr) int))
  ;;
  (define gtk-column-view-get-show-column-separators
    (foreign-procedure "gtk_column_view_get_show_column_separators" (iptr) int))
  ;;
  (define gtk-column-view-get-show-row-separators
    (foreign-procedure "gtk_column_view_get_show_row_separators" (iptr) int))
  ;;
  (define gtk-column-view-get-single-click-activate
    (foreign-procedure "gtk_column_view_get_single_click_activate" (iptr) int))
  ;;
  (define gtk-column-view-get-sorter
    (foreign-procedure "gtk_column_view_get_sorter" (iptr) iptr))
  ;;
  (define gtk-column-view-insert-column
    (foreign-procedure "gtk_column_view_insert_column" (iptr int iptr) void))
  ;;
  (define gtk-column-view-remove-column
    (foreign-procedure "gtk_column_view_remove_column" (iptr iptr) void))
  ;;
  (define gtk-column-view-set-enable-rubberband
    (foreign-procedure "gtk_column_view_set_enable_rubberband" (iptr int) void))
  ;;
  (define gtk-column-view-set-model
    (foreign-procedure "gtk_column_view_set_model" (iptr iptr) void))
  ;;
  (define gtk-column-view-set-reorderable
    (foreign-procedure "gtk_column_view_set_reorderable" (iptr int) void))
  ;;
  (define gtk-column-view-set-show-column-separators
    (foreign-procedure "gtk_column_view_set_show_column_separators"
		       (iptr int) void))
  ;;
  (define gtk-column-view-set-show-row-separators
    (foreign-procedure "gtk_column_view_set_show_row_separators"
		       (iptr int) void))
  ;;
  (define gtk-column-view-set-single-click-activate
    (foreign-procedure "gtk_column_view_set_single_click_activate"
		       (iptr int) void))
  ;;
  (define gtk-column-view-sort-by-column
    (foreign-procedure "gtk_column_view_sort_by_column"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-column-view-column-new
    (foreign-procedure "gtk_column_view_column_new" (string iptr) iptr))
  ;;
  (define gtk-column-view-column-get-column-view
    (foreign-procedure "gtk_column_view_column_get_column_view" (iptr) iptr))
  ;;
  (define gtk-column-view-column-get-expand
    (foreign-procedure "gtk_column_view_column_get_expand" (iptr) int))
  ;;
  (define gtk-column-view-column-get-factory
    (foreign-procedure "gtk_column_view_column_get_factory" (iptr) iptr))
  ;;
  (define gtk-column-view-column-get-fixed-width
    (foreign-procedure "gtk_column_view_column_get_fixed_width" (iptr) int))
  ;;
  (define gtk-column-view-column-get-header-menu
    (foreign-procedure "gtk_column_view_column_get_header_menu" (iptr) iptr))
  ;;
  (define gtk-column-view-column-get-resizable
    (foreign-procedure "gtk_column_view_column_get_resizable" (iptr) int))
  ;;
  (define gtk-column-view-column-get-sorter
    (foreign-procedure "gtk_column_view_column_get_sorter" (iptr) iptr))
  ;;
  (define gtk-column-view-column-get-title
    (foreign-procedure "gtk_column_view_column_get_title" (iptr) string))
  ;;
  (define gtk-column-view-column-get-visible
    (foreign-procedure "gtk_column_view_column_get_visible" (iptr) int))
  ;;
  (define gtk-column-view-column-set-expand
    (foreign-procedure "gtk_column_view_column_set_expand" (iptr int) void))
  ;;
  (define gtk-column-view-column-set-factory
    (foreign-procedure "gtk_column_view_column_set_factory" (iptr iptr) void))
  ;;
  (define gtk-column-view-column-set-fixed-width
    (foreign-procedure "gtk_column_view_column_set_fixed_width"
		       (iptr int) void))
  ;;
  (define gtk-column-view-column-set-header-menu
    (foreign-procedure "gtk_column_view_column_set_header_menu"
		       (iptr iptr) void))
  ;;
  (define gtk-column-view-column-set-resizable
    (foreign-procedure "gtk_column_view_column_set_resizable" (iptr int) void))
  ;;
  (define gtk-column-view-column-set-sorter
    (foreign-procedure "gtk_column_view_column_set_sorter" (iptr iptr) void))
  ;;
  (define gtk-column-view-column-set-title
    (foreign-procedure "gtk_column_view_column_set_title" (iptr string) void))
  ;;
  (define gtk-column-view-column-set-visible
    (foreign-procedure "gtk_column_view_column_set_visible" (iptr int) void))
  ;;
  (define gtk-combo-box-new
    (foreign-procedure "gtk_combo_box_new" () iptr))
  ;;
  (define gtk-combo-box-new-with-entry
    (foreign-procedure "gtk_combo_box_new_with_entry" () iptr))
  ;;
  (define gtk-combo-box-new-with-model
    (foreign-procedure "gtk_combo_box_new_with_model" (iptr) iptr))
  ;;
  (define gtk-combo-box-new-with-model-and-entry
    (foreign-procedure "gtk_combo_box_new_with_model_and_entry" (iptr) iptr))
  ;;
  (define gtk-combo-box-get-active
    (foreign-procedure "gtk_combo_box_get_active" (iptr) int))
  ;;
  (define gtk-combo-box-get-active-id
    (foreign-procedure "gtk_combo_box_get_active_id" (iptr) string))
  ;;
  (define gtk-combo-box-get-active-iter
    (foreign-procedure "gtk_combo_box_get_active_iter" (iptr iptr) int))
  ;;
  (define gtk-combo-box-get-button-sensitivity
    (foreign-procedure "gtk_combo_box_get_button_sensitivity" (iptr) iptr))
  ;;
  (define gtk-combo-box-get-child
    (foreign-procedure "gtk_combo_box_get_child" (iptr) iptr))
  ;;
  (define gtk-combo-box-get-entry-text-column
    (foreign-procedure "gtk_combo_box_get_entry_text_column" (iptr) int))
  ;;
  (define gtk-combo-box-get-has-entry
    (foreign-procedure "gtk_combo_box_get_has_entry" (iptr) int))
  ;;
  (define gtk-combo-box-get-id-column
    (foreign-procedure "gtk_combo_box_get_id_column" (iptr) int))
  ;;
  (define gtk-combo-box-get-model
    (foreign-procedure "gtk_combo_box_get_model" (iptr) iptr))
  ;;
  (define gtk-combo-box-get-popup-fixed-width
    (foreign-procedure "gtk_combo_box_get_popup_fixed_width" (iptr) int))
  ;;
  (define gtk-combo-box-get-row-separator-func
    (foreign-procedure "gtk_combo_box_get_row_separator_func" (iptr) iptr))
  ;;
  (define gtk-combo-box-popdown
    (foreign-procedure "gtk_combo_box_popdown" (iptr) void))
  ;;
  (define gtk-combo-box-popup
    (foreign-procedure "gtk_combo_box_popup" (iptr) void))
  ;;
  (define gtk-combo-box-popup-for-device
    (foreign-procedure "gtk_combo_box_popup_for_device" (iptr iptr) void))
  ;;
  (define gtk-combo-box-set-active
    (foreign-procedure "gtk_combo_box_set_active" (iptr int) void))
  ;;
  (define gtk-combo-box-set-active-id
    (foreign-procedure "gtk_combo_box_set_active_id" (iptr string) int))
  ;;
  (define gtk-combo-box-set-active-iter
    (foreign-procedure "gtk_combo_box_set_active_iter" (iptr iptr) void))
  ;;
  (define gtk-combo-box-set-button-sensitivity
    (foreign-procedure "gtk_combo_box_set_button_sensitivity" (iptr iptr) void))
  ;;
  (define gtk-combo-box-set-child
    (foreign-procedure "gtk_combo_box_set_child" (iptr iptr) void))
  ;;
  (define gtk-combo-box-set-entry-text-column
    (foreign-procedure "gtk_combo_box_set_entry_text_column" (iptr int) void))
  ;;
  (define gtk-combo-box-set-id-column
    (foreign-procedure "gtk_combo_box_set_id_column" (iptr int) void))
  ;;
  (define gtk-combo-box-set-model
    (foreign-procedure "gtk_combo_box_set_model" (iptr iptr) void))
  ;;
  (define gtk-combo-box-set-popup-fixed-width
    (foreign-procedure "gtk_combo_box_set_popup_fixed_width" (iptr int) void))
  ;;
  (define gtk-combo-box-set-row-separator-func
    (foreign-procedure "gtk_combo_box_set_row_separator_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-combo-box-text-new
    (foreign-procedure "gtk_combo_box_text_new" () iptr))
  ;;
  (define gtk-combo-box-text-new-with-entry
    (foreign-procedure "gtk_combo_box_text_new_with_entry" () iptr))
  ;;
  (define gtk-combo-box-text-append
    (foreign-procedure "gtk_combo_box_text_append" (iptr string string) void))
  ;;
  (define gtk-combo-box-text-append-text
    (foreign-procedure "gtk_combo_box_text_append_text" (iptr string) void))
  ;;
  (define gtk-combo-box-text-get-active-text
    (foreign-procedure "gtk_combo_box_text_get_active_text" (iptr) string))
  ;;
  (define gtk-combo-box-text-insert
    (foreign-procedure "gtk_combo_box_text_insert"
		       (iptr int string string) void))
  ;;
  (define gtk-combo-box-text-insert-text
    (foreign-procedure "gtk_combo_box_text_insert_text"
		       (iptr int string) void))
  ;;
  (define gtk-combo-box-text-prepend
    (foreign-procedure "gtk_combo_box_text_prepend" (iptr string string) void))
  ;;
  (define gtk-combo-box-text-prepend-text
    (foreign-procedure "gtk_combo_box_text_prepend_text" (iptr string) void))
  ;;
  (define gtk-combo-box-text-remove
    (foreign-procedure "gtk_combo_box_text_remove" (iptr int) void))
  ;;
  (define gtk-combo-box-text-remove-all
    (foreign-procedure "gtk_combo_box_text_remove_all" (iptr) void))
  ;;
  (define gtk-constant-expression-new
    (foreign-procedure "gtk_constant_expression_new" (iptr) iptr))
  ;;
  (define gtk-constant-expression-new-for-value
    (foreign-procedure "gtk_constant_expression_new_for_value" (iptr) iptr))
  ;;
  (define gtk-constant-expression-get-value
    (foreign-procedure "gtk_constant_expression_get_value" (iptr) iptr))
  ;;
  (define gtk-constraint-new
    (foreign-procedure "gtk_constraint_new"
		       (iptr iptr iptr iptr iptr double double int) iptr))
  ;;
  (define gtk-constraint-new-constant
    (foreign-procedure "gtk_constraint_new_constant"
		       (iptr iptr iptr double int) iptr))
  ;;
  (define gtk-constraint-get-constant
    (foreign-procedure "gtk_constraint_get_constant" (iptr) double))
  ;;
  (define gtk-constraint-get-multiplier
    (foreign-procedure "gtk_constraint_get_multiplier" (iptr) double))
  ;;
  (define gtk-constraint-get-relation
    (foreign-procedure "gtk_constraint_get_relation" (iptr) iptr))
  ;;
  (define gtk-constraint-get-source
    (foreign-procedure "gtk_constraint_get_source" (iptr) iptr))
  ;;
  (define gtk-constraint-get-source-attribute
    (foreign-procedure "gtk_constraint_get_source_attribute" (iptr) iptr))
  ;;
  (define gtk-constraint-get-strength
    (foreign-procedure "gtk_constraint_get_strength" (iptr) int))
  ;;
  (define gtk-constraint-get-target
    (foreign-procedure "gtk_constraint_get_target" (iptr) iptr))
  ;;
  (define gtk-constraint-get-target-attribute
    (foreign-procedure "gtk_constraint_get_target_attribute" (iptr) iptr))
  ;;
  (define gtk-constraint-is-attached
    (foreign-procedure "gtk_constraint_is_attached" (iptr) int))
  ;;
  (define gtk-constraint-is-constant
    (foreign-procedure "gtk_constraint_is_attached" (iptr) int))
  ;;
  (define gtk-constraint-is-required
    (foreign-procedure "gtk_constraint_is_required" (iptr) int))
  ;;
  (define gtk-constraint-guide-new
    (foreign-procedure "gtk_constraint_guide_new" () iptr))
  ;;
  (define gtk-constraint-guide-get-max-size
    (foreign-procedure "gtk_constraint_guide_get_max_size" (iptr int int) void))
  ;;
  (define gtk-constraint-guide-get-min-size
    (foreign-procedure "gtk_constraint_guide_get_min_size" (iptr int int) void))
  ;;
  (define gtk-constraint-guide-get-name
    (foreign-procedure "gtk_constraint_guide_get_name" (iptr) string))
  ;;
  (define gtk-constraint-guide-get-nat-size
    (foreign-procedure "gtk_constraint_guide_get_nat_size" (iptr int int) void))
  ;;
  (define gtk-constraint-guide-get-strength
    (foreign-procedure "gtk_constraint_guide_get_strength" (iptr) iptr))
  ;;
  (define gtk-constraint-guide-set-max-size
    (foreign-procedure "gtk_constraint_guide_set_max_size" (iptr int int) void))
  ;;
  (define gtk-constraint-guide-set-min-size
    (foreign-procedure "gtk_constraint_guide_set_min_size" (iptr int int) void))
  ;;
  (define gtk-constraint-guide-set-name
    (foreign-procedure "gtk_constraint_guide_set_name" (iptr string) void))
  ;;
  (define gtk-constraint-guide-set-nat-size
    (foreign-procedure "gtk_constraint_guide_set_nat_size" (iptr int int) void))
  ;;
  (define gtk-constraint-guide-set-strength
    (foreign-procedure "gtk_constraint_guide_set_strength" (iptr iptr) void))
  ;;
  (define gtk-constraint-layout-new
    (foreign-procedure "gtk_constraint_layout_new" () iptr))
  ;;
  (define gtk-constraint-layout-add-constraint
    (foreign-procedure "gtk_constraint_layout_add_constraint" (iptr iptr) void))
  ;;
  (define gtk-constraint-layout-add-constraints-from-description
    (foreign-procedure "gtk_constraint_layout_add_constraints_from_description"
		       (iptr string int int int iptr string) iptr))
  ;;
  (define gtk-constraint-layout-add-constraints-from-descriptionv
    (foreign-procedure "gtk_constraint_layout_add_constraints_from_descriptionv"
		       (iptr string int int int iptr iptr) iptr))
  ;;
  (define gtk-constraint-layout-add-guide
    (foreign-procedure "gtk_constraint_layout_add_guide" (iptr iptr) void))
  ;;
  (define gtk-constraint-layout-observe-constraints
    (foreign-procedure "gtk_constraint_layout_observe_constraints"
		       (iptr) iptr))
  ;;
  (define gtk-constraint-layout-observe-guides
    (foreign-procedure "gtk_constraint_layout_observe_guides" (iptr) iptr))
  ;;
  (define gtk-constraint-layout-remove-all-constraints
    (foreign-procedure "gtk_constraint_layout_remove_all_constraints"
		       (iptr) void))
  ;;
  (define gtk-constraint-layout-remove-constraint
    (foreign-procedure "gtk_constraint_layout_remove_constraint"
		       (iptr iptr) void))
  ;;
  (define gtk-constraint-layout-remove-guide
    (foreign-procedure "gtk_constraint_layout_remove_guide" (iptr iptr) void))
  ;;
  (define gtk-css-provider-new
    (foreign-procedure "gtk_css_provider_new" () iptr))
  ;;
  (define gtk-css-provider-load-from-data
    (foreign-procedure "gtk_css_provider_load_from_data"
		       (iptr string int) void))
  ;;
  (define gtk-css-provider-load-from-file
    (foreign-procedure "gtk_css_provider_load_from_file" (iptr iptr) void))
  ;;
  (define gtk-css-provider-load-from-path
    (foreign-procedure "gtk_css_provider_load_from_path" (iptr string) void))
  ;;
  (define gtk-css-provider-load-from-resource
    (foreign-procedure "gtk_css_provider_load_from_resource"
		       (iptr string) void))
  ;;
  (define gtk-css-provider-load-named
    (foreign-procedure "gtk_css_provider_load_named"
		       (iptr string string) void))
  ;;
  (define gtk-css-provider-to-string
    (foreign-procedure "gtk_css_provider_to_string" (iptr) string))
  ;;
  (define gtk-custom-filter-new
    (foreign-procedure "gtk_custom_filter_new" (iptr iptr iptr) iptr))
  ;;
  (define gtk-custom-filter-set-filter-func
    (foreign-procedure "gtk_custom_filter_set_filter_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-custom-layout-new
    (foreign-procedure "gtk_custom_layout_new" (iptr iptr iptr) iptr))
  ;;
  (define gtk-custom-sorter-new
    (foreign-procedure "gtk_custom_sorter_new" (iptr iptr iptr) iptr))
  ;;
  (define gtk-custom-sorter-set-sort-func
    (foreign-procedure "gtk_custom_sorter_set_sort_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-dialog-new
    (foreign-procedure "gtk_dialog_new" () iptr))
  ;;
  (define gtk-dialog-new-with-buttons
    (foreign-procedure "gtk_dialog_new_with_buttons"
		       (string iptr iptr string) iptr))
  ;;
  (define gtk-dialog-add-action-widget
    (foreign-procedure "gtk_dialog_add_action_widget" (iptr iptr int) void))
  ;;
  (define gtk-dialog-add-button
    (foreign-procedure "gtk_dialog_add_button" (iptr string int) iptr))
  ;;
  (define gtk-dialog-add-buttons
    (foreign-procedure "gtk_dialog_add_buttons" (iptr string) void))
  ;;
  (define gtk-dialog-get-content-area
    (foreign-procedure "gtk_dialog_get_content_area" (iptr) iptr))
  ;;
  (define gtk-dialog-get-header-bar
    (foreign-procedure "gtk_dialog_get_header_bar" (iptr) iptr))
  ;;
  (define gtk-dialog-get-response-for-widget
    (foreign-procedure "gtk_dialog_get_response_for_widget" (iptr iptr) int))
  ;;
  (define gtk-dialog-get-widget-for-response
    (foreign-procedure "gtk_dialog_get_widget_for_response" (iptr int) iptr))
  ;;
  (define gtk-dialog-response
    (foreign-procedure "gtk_dialog_response" (iptr int) void))
  ;;
  (define gtk-dialog-set-default-response
    (foreign-procedure "gtk_dialog_set_default_response" (iptr int) void))
  ;;
  (define gtk-dialog-set-response-sensitive
    (foreign-procedure "gtk_dialog_set_response_sensitive"
		       (iptr int int) void))
  ;;
  (define gtk-directory-list-new
    (foreign-procedure "gtk_directory_list_new" (string iptr) iptr))
  ;;
  (define gtk-directory-list-get-attributes
    (foreign-procedure "gtk_directory_list_get_attributes" (iptr) string))
  ;;
  (define gtk-directory-list-get-error
    (foreign-procedure "gtk_directory_list_get_error" (iptr) iptr))
  ;;
  (define gtk-directory-list-get-file
    (foreign-procedure "gtk_directory_list_get_file" (iptr) iptr))
  ;;
  (define gtk-directory-list-get-io-priority
    (foreign-procedure "gtk_directory_list_get_io_priority" (iptr) int))
  ;;
  (define gtk-directory-list-get-monitored
    (foreign-procedure "gtk_directory_list_get_monitored" (iptr) int))
  ;;
  (define gtk-directory-list-is-loading
    (foreign-procedure "gtk_directory_list_is_loading" (iptr) int))
  ;;
  (define gtk-directory-list-set-attributes
    (foreign-procedure "gtk_directory_list_set_attributes" (iptr string) void))
  ;;
  (define gtk-directory-list-set-file
    (foreign-procedure "gtk_directory_list_set_file" (iptr iptr) void))
  ;;
  (define gtk-directory-list-set-io-priority
    (foreign-procedure "gtk_directory_list_set_io_priority" (iptr int) void))
  ;;
  (define gtk-directory-list-set-monitored
    (foreign-procedure "gtk_directory_list_set_monitored" (iptr int) void))
  ;;
  (define gtk-drag-icon-create-widget-for-value
    (foreign-procedure "gtk_drag_icon_create_widget_for_value" (iptr) iptr))
  ;;
  (define gtk-drag-icon-get-for-drag
    (foreign-procedure "gtk_drag_icon_get_for_drag" (iptr) iptr))
  ;;
  (define gtk-drag-icon-set-from-paintable
    (foreign-procedure "gtk_drag_icon_set_from_paintable"
		       (iptr iptr int int) void))
  ;;
  (define gtk-drag-icon-get-child
    (foreign-procedure "gtk_drag_icon_get_child" (iptr) iptr))
  ;;
  (define gtk-drag-icon-set-child
    (foreign-procedure "gtk_drag_icon_set_child" (iptr iptr) void))
  ;;
  (define gtk-drag-source-new
    (foreign-procedure "gtk_drag_source_new" () iptr))
  ;;
  (define gtk-drag-source-drag-cancel
    (foreign-procedure "gtk_drag_source_drag_cancel" (iptr) void))
  ;;
  (define gtk-drag-source-get-actions
    (foreign-procedure "gtk_drag_source_get_actions" (iptr) iptr))
  ;;
  (define gtk-drag-source-get-content
    (foreign-procedure "gtk_drag_source_get_content" (iptr) iptr))
  ;;
  (define gtk-drag-source-get-drag
    (foreign-procedure "gtk_drag_source_get_drag" (iptr) iptr))
  ;;
  (define gtk-drag-source-set-actions
    (foreign-procedure "gtk_drag_source_set_actions" (iptr iptr) void))
  ;;
  (define gtk-drag-source-set-content
    (foreign-procedure "gtk_drag_source_set_content" (iptr iptr) void))
  ;;
  (define gtk-drag-source-set-icon
    (foreign-procedure "gtk_drag_source_set_icon" (iptr iptr int int) void))
  ;;
  (define gtk-drawing-area-new
    (foreign-procedure "gtk_drawing_area_new" () iptr))
  ;;
  (define gtk-drawing-area-get-content-height
    (foreign-procedure "gtk_drawing_area_get_content_height" (iptr) int))
  ;;
  (define gtk-drawing-area-get-content-width
    (foreign-procedure "gtk_drawing_area_get_content_width" (iptr) int))
  ;;
  (define gtk-drawing-area-set-content-height
    (foreign-procedure "gtk_drawing_area_set_content_height" (iptr int) void))
  ;;
  (define gtk-drawing-area-set-content-width
    (foreign-procedure "gtk_drawing_area_set_content_width" (iptr int) void))
  ;;
  (define gtk-drawing-area-set-draw-func
    (foreign-procedure "gtk_drawing_area_set_draw_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-drop-controller-motion-new
    (foreign-procedure "gtk_drop_controller_motion_new" () iptr))
  ;;
  (define gtk-drop-controller-motion-contains-pointer
    (foreign-procedure "gtk_drop_controller_motion_contains_pointer"
		       (iptr) int))
  ;;
  (define gtk-drop-controller-motion-get-drop
    (foreign-procedure "gtk_drop_controller_motion_get_drop" (iptr) iptr))
  ;;
  (define gtk-drop-controller-motion-is-pointer
    (foreign-procedure "gtk_drop_controller_motion_is_pointer" (iptr) int))
  ;;
  (define gtk-drop-down-new
    (foreign-procedure "gtk_drop_down_new" (iptr iptr) iptr))
  ;;
  (define gtk-drop-down-new-from-strings
    (foreign-procedure "gtk_drop_down_new_from_strings" (iptr) iptr))
  ;;
  (define gtk-drop-down-get-enable-search
    (foreign-procedure "gtk_drop_down_get_enable_search" (iptr) int))
  ;;
  (define gtk-drop-down-get-expression
    (foreign-procedure "gtk_drop_down_get_expression" (iptr) iptr))
  ;;
  (define gtk-drop-down-get-factory
    (foreign-procedure "gtk_drop_down_get_factory" (iptr) iptr))
  ;;
  (define gtk-drop-down-get-list-factory
    (foreign-procedure "gtk_drop_down_get_list_factory" (iptr) iptr))
  ;;
  (define gtk-drop-down-get-model
    (foreign-procedure "gtk_drop_down_get_model" (iptr) iptr))
  ;;
  (define gtk-drop-down-get-selected
    (foreign-procedure "gtk_drop_down_get_selected" (iptr) int))
  ;;
  (define gtk-drop-down-get-selected-item
    (foreign-procedure "gtk_drop_down_get_selected_item" (iptr) iptr))
  ;;
  (define gtk-drop-down-set-enable-search
    (foreign-procedure "gtk_drop_down_set_enable_search" (iptr int) void))
  ;;
  (define gtk-drop-down-set-expression
    (foreign-procedure "gtk_drop_down_set_expression" (iptr iptr) void))
  ;;
  (define gtk-drop-down-set-factory
    (foreign-procedure "gtk_drop_down_set_factory" (iptr iptr) void))
  ;;
  (define gtk-drop-down-set-list-factory
    (foreign-procedure "gtk_drop_down_set_list_factory" (iptr iptr) void))
  ;;
  (define gtk-drop-down-set-model
    (foreign-procedure "gtk_drop_down_set_model" (iptr iptr) void))
  ;;
  (define gtk-drop-down-set-selected
    (foreign-procedure "gtk_drop_down_set_selected" (iptr int) void))
  ;;
  (define gtk-drop-target-new
    (foreign-procedure "gtk_drop_target_new" (iptr iptr) iptr))
  ;;
  (define gtk-drop-target-get-actions
    (foreign-procedure "gtk_drop_target_get_actions" (iptr) iptr))
  ;;
  (define gtk-drop-target-get-current-drop
    (foreign-procedure "gtk_drop_target_get_current_drop" (iptr) iptr))
  ;;
  (define gtk-drop-target-get-drop
    (foreign-procedure "gtk_drop_target_get_drop" (iptr) iptr))
  ;;
  (define gtk-drop-target-get-formats
    (foreign-procedure "gtk_drop_target_get_drop" (iptr) iptr))
  ;;
  (define gtk-drop-target-get-gtypes
    (foreign-procedure "gtk_drop_target_get_gtypes" (iptr int) iptr))
  ;;
  (define gtk-drop-target-get-preload
    (foreign-procedure "gtk_drop_target_get_preload" (iptr) int))
  ;;
  (define gtk-drop-target-get-value
    (foreign-procedure "gtk_drop_target_get_value" (iptr) iptr))
  ;;
  (define gtk-drop-target-reject
    (foreign-procedure "gtk_drop_target_reject" (iptr) void))
  ;;
  (define gtk-drop-target-set-actions
    (foreign-procedure "gtk_drop_target_set_actions" (iptr iptr) void))
  ;;
  (define gtk-drop-target-set-gtypes
    (foreign-procedure "gtk_drop_target_set_gtypes" (iptr iptr int) void))
  ;;
  (define gtk-drop-target-set-preload
    (foreign-procedure "gtk_drop_target_set_preload" (iptr int) void))
  ;;
  (define gtk-drop-target-async-new
    (foreign-procedure "gtk_drop_target_async_new" (iptr iptr) iptr))
  ;;
  (define gtk-drop-target-async-get-actions
    (foreign-procedure "gtk_drop_target_async_get_actions" (iptr) iptr))
  ;;
  (define gtk-drop-target-async-get-formats
    (foreign-procedure "gtk_drop_target_async_get_formats" (iptr) iptr))
  ;;
  (define gtk-drop-target-async-reject-drop
    (foreign-procedure "gtk_drop_target_async_reject_drop" (iptr iptr) void))
  ;;
  (define gtk-drop-target-async-set-actions
    (foreign-procedure "gtk_drop_target_async_set_actions" (iptr iptr) void))
  ;;
  (define gtk-drop-target-async-set-formats
    (foreign-procedure "gtk_drop_target_async_set_formats" (iptr iptr) void))
  ;;
  (define gtk-editable-label-new
    (foreign-procedure "gtk_editable_label_new" (string) iptr))
  ;;
  (define gtk-editable-label-get-editing
    (foreign-procedure "gtk_editable_label_get_editing" (iptr) int))
  ;;
  (define gtk-editable-label-start-editing
    (foreign-procedure "gtk_editable_label_start_editing" (iptr) void))
  ;;
  (define gtk-editable-label-stop-editing
    (foreign-procedure "gtk_editable_label_stop_editing" (iptr int) void))
  ;;
  (define gtk-emoji-chooser-new
    (foreign-procedure "gtk_emoji_chooser_new" () iptr))
  ;;
  (define gtk-entry-new
    (foreign-procedure "gtk_entry_new" () iptr))
  ;;
  (define gtk-entry-new-with-buffer
    (foreign-procedure "gtk_entry_new_with_buffer" (iptr) iptr))
  ;;
  (define gtk-entry-get-activates-default
    (foreign-procedure "gtk_entry_get_activates_default" (iptr) int))
  ;;
  (define gtk-entry-get-alignment
    (foreign-procedure "gtk_entry_get_alignment" (iptr) float))
  ;;
  (define gtk-entry-get-attributes
    (foreign-procedure "gtk_entry_get_attributes" (iptr) iptr))
  ;;
  (define gtk-entry-get-buffer
    (foreign-procedure "gtk_entry_get_buffer" (iptr) iptr))
  ;;
  (define gtk-entry-get-completion
    (foreign-procedure "gtk_entry_get_completion" (iptr) iptr))
  ;;
  (define gtk-entry-get-current-icon-drag-source
    (foreign-procedure "gtk_entry_get_current_icon_drag_source" (iptr) int))
  ;;
  (define gtk-entry-get-extra-menu
    (foreign-procedure "gtk_entry_get_extra_menu" (iptr) iptr))
  ;;
  (define gtk-entry-get-has-frame
    (foreign-procedure "gtk_entry_get_has_frame" (iptr) int))
  ;;
  (define gtk-entry-get-icon-activatable
    (foreign-procedure "gtk_entry_get_icon_activatable" (iptr iptr) int))
  ;;
  (define gtk-entry-get-icon-area
    (foreign-procedure "gtk_entry_get_icon_area" (iptr iptr iptr) void))
  ;;
  (define gtk-entry-get-icon-at-pos
    (foreign-procedure "gtk_entry_get_icon_at_pos" (iptr int int) int))
  ;;
  (define gtk-entry-get-icon-gicon
    (foreign-procedure "gtk_entry_get_icon_gicon" (iptr iptr) iptr))
  ;;
  (define gtk-entry-get-icon-name
    (foreign-procedure "gtk_entry_get_icon_name" (iptr iptr) string))
  ;;
  (define gtk-entry-get-icon-paintable
    (foreign-procedure "gtk_entry_get_icon_paintable" (iptr iptr) iptr))
  ;;
  (define gtk-entry-get-icon-sensitive
    (foreign-procedure "gtk_entry_get_icon_sensitive" (iptr iptr) int))
  ;;
  (define gtk-entry-get-icon-storage-type
    (foreign-procedure "gtk_entry_get_icon_storage_type" (iptr iptr) iptr))
  ;;
  (define gtk-entry-get-icon-tooltip-markup
    (foreign-procedure "gtk_entry_get_icon_tooltip_markup" (iptr iptr) string))
  ;;
  (define gtk-entry-get-icon-tooltip-text
    (foreign-procedure "gtk_entry_get_icon_tooltip_text" (iptr iptr) string))
  ;;
  (define gtk-entry-get-input-hints
    (foreign-procedure "gtk_entry_get_input_hints" (iptr) iptr))
  ;;
  (define gtk-entry-get-input-purpose
    (foreign-procedure "gtk_entry_get_input_purpose" (iptr) iptr))
  ;;
  (define gtk-entry-get-invisible-char
    (foreign-procedure "gtk_entry_get_invisible_char" (iptr) int))
  ;;
  (define gtk-entry-get-max-length
    (foreign-procedure "gtk_entry_get_max_length" (iptr) int))
  ;;
  (define gtk-entry-get-overwrite-mode
    (foreign-procedure "gtk_entry_get_overwrite_mode" (iptr) int))
  ;;
  (define gtk-entry-get-placeholder-text
    (foreign-procedure "gtk_entry_get_overwrite_mode" (iptr) string))
  ;;
  (define gtk-entry-get-progress-fraction
    (foreign-procedure "gtk_entry_get_progress_fraction" (iptr) double))
  ;;
  (define gtk-entry-get-progress-pulse-step
    (foreign-procedure "gtk_entry_get_progress_pulse_step" (iptr) double))
  ;;
  (define gtk-entry-get-tabs
    (foreign-procedure "gtk_entry_get_tabs" (iptr) iptr))
  ;;
  (define gtk-entry-get-text-length
    (foreign-procedure "gtk_entry_get_text_length" (iptr) int))
  ;;
  (define gtk-entry-get-visibility
    (foreign-procedure "gtk_entry_get_visibility" (iptr) int))
  ;;
  (define gtk-entry-grab-focus-without-selecting
    (foreign-procedure "gtk_entry_grab_focus_without_selecting" (iptr) int))
  ;;
  (define gtk-entry-progress-pulse
    (foreign-procedure "gtk_entry_progress_pulse" (iptr) void))
  ;;
  (define gtk-entry-reset-im-context
    (foreign-procedure "gtk_entry_reset_im_context" (iptr) void))
  ;;
  (define gtk-entry-set-activates-default
    (foreign-procedure "gtk_entry_set_activates_default" (iptr int) void))
  ;;
  (define gtk-entry-set-alignment
    (foreign-procedure "gtk_entry_set_alignment" (iptr float) void))
  ;;
  (define gtk-entry-set-attributes
    (foreign-procedure "gtk_entry_set_attributes" (iptr iptr) void))
  ;;
  (define gtk-entry-set-buffer
    (foreign-procedure "gtk_entry_set_buffer" (iptr iptr) void))
  ;;
  (define gtk-entry-set-completion
    (foreign-procedure "gtk_entry_set_completion" (iptr iptr) void))
  ;;
  (define gtk-entry-set-extra-menu
    (foreign-procedure "gtk_entry_set_extra_menu" (iptr iptr) void))
  ;;
  (define gtk-entry-set-has-frame
    (foreign-procedure "gtk_entry_set_has_frame" (iptr int) void))
  ;;
  (define gtk-entry-set-icon-activatable
    (foreign-procedure "gtk_entry_set_icon_activatable" (iptr iptr int) void))
  ;;
  (define gtk-entry-set-icon-drag-source
    (foreign-procedure "gtk_entry_set_icon_drag_source"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-entry-set-icon-from-gicon
    (foreign-procedure "gtk_entry_set_icon_from_gicon" (iptr iptr iptr) void))
  ;;
  (define gtk-entry-set-icon-from-icon-name
    (foreign-procedure "gtk_entry_set_icon_from_icon_name"
		       (iptr iptr string) void))
  ;;
  (define gtk-entry-set-icon-from-paintable
    (foreign-procedure "gtk_entry_set_icon_from_paintable"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-entry-set-icon-sensitive
    (foreign-procedure "gtk_entry_set_icon_sensitive" (iptr iptr int) void))
  ;;
  (define gtk-entry-set-icon-tooltip-markup
    (foreign-procedure "gtk_entry_set_icon_tooltip_markup"
		       (iptr iptr string) void))
  ;;
  (define gtk-entry-set-icon-tooltip-text
    (foreign-procedure "gtk_entry_set_icon_tooltip_text"
		       (iptr iptr string) void))
  ;;
  (define gtk-entry-set-input-hints
    (foreign-procedure "gtk_entry_set_input_hints" (iptr iptr) void))
  ;;
  (define gtk-entry-set-input-purpose
    (foreign-procedure "gtk_entry_set_input_purpose" (iptr iptr) void))
  ;;
  (define gtk-entry-set-invisible-char
    (foreign-procedure "gtk_entry_set_invisible_char" (iptr int) void))
  ;;
  (define gtk-entry-set-max-length
    (foreign-procedure "gtk_entry_set_max_length" (iptr int) void))
  ;;
  (define gtk-entry-set-overwrite-mode
    (foreign-procedure "gtk_entry_set_overwrite_mode" (iptr int) void))
  ;;
  (define gtk-entry-set-placeholder-text
    (foreign-procedure "gtk_entry_set_placeholder_text" (iptr string) void))
  ;;
  (define gtk-entry-set-progress-fraction
    (foreign-procedure "gtk_entry_set_progress_fraction" (iptr double) void))
  ;;
  (define gtk-entry-set-progress-pulse-step
    (foreign-procedure "gtk_entry_set_progress_pulse_step" (iptr double) void))
  ;;
  (define gtk-entry-set-tabs
    (foreign-procedure "gtk_entry_set_tabs" (iptr iptr) void))
  ;;
  (define gtk-entry-set-visibility
    (foreign-procedure "gtk_entry_set_visibility" (iptr int) void))
  ;;
  (define gtk-entry-unset-invisible-char
    (foreign-procedure "gtk_entry_unset_invisible_char" (iptr) void))
  ;;
  (define gtk-entry-buffer-new
    (foreign-procedure "gtk_entry_buffer_new" (string int) iptr))
  ;;
  (define gtk-entry-buffer-delete-text
    (foreign-procedure "gtk_entry_buffer_delete_text" (iptr int int) int))
  ;;
  (define gtk-entry-buffer-emit-deleted-text
    (foreign-procedure "gtk_entry_buffer_emit_deleted_text"
		       (iptr int int) void))
  ;;
  (define gtk-entry-buffer-emit-inserted-text
    (foreign-procedure "gtk_entry_buffer_emit_inserted_text"
		       (iptr int string int) void))
  ;;
  (define gtk-entry-buffer-get-bytes
    (foreign-procedure "gtk_entry_buffer_get_bytes" (iptr) int))
  ;;
  (define gtk-entry-buffer-get-length
    (foreign-procedure "gtk_entry_buffer_get_length" (iptr) int))
  ;;
  (define gtk-entry-buffer-get-max-length
    (foreign-procedure "gtk_entry_buffer_get_max_length" (iptr) int))
  ;;
  (define gtk-entry-buffer-get-text
    (foreign-procedure "gtk_entry_buffer_get_text" (iptr) string))
  ;;
  (define gtk-entry-buffer-insert-text
    (foreign-procedure "gtk_entry_buffer_insert_text"
		       (iptr int string int) int))
  ;;
  (define gtk-entry-buffer-set-max-length
    (foreign-procedure "gtk_entry_buffer_set_max_length" (iptr int) void))
  ;;
  (define gtk-entry-buffer-set-text
    (foreign-procedure "gtk_entry_buffer_set_text" (iptr string int) void))
  ;;
  (define gtk-entry-completion-new
    (foreign-procedure "gtk_entry_completion_new" () iptr))
  ;;
  (define gtk-entry-completion-new-with-area
    (foreign-procedure "gtk_entry_completion_new_with_area" (iptr) iptr))
  ;;
  (define gtk-entry-completion-complete
    (foreign-procedure "gtk_entry_completion_complete" (iptr) void))
  ;;
  (define gtk-entry-completion-compute-prefix
    (foreign-procedure "gtk_entry_completion_compute_prefix"
		       (iptr string) string))
  ;;
  (define gtk-entry-completion-get-completion-prefix
    (foreign-procedure "gtk_entry_completion_get_completion_prefix"
		       (iptr) string))
  ;;
  (define gtk-entry-completion-get-entry
    (foreign-procedure "gtk_entry_completion_get_entry" (iptr) iptr))
  ;;
  (define gtk-entry-completion-get-inline-completion
    (foreign-procedure "gtk_entry_completion_get_inline_completion"
		       (iptr) int))
  ;;
  (define gtk-entry-completion-get-inline-selection
    (foreign-procedure "gtk_entry_completion_get_inline_selection"
		       (iptr) int))
  ;;
  (define gtk-entry-completion-get-minimum-key-length
    (foreign-procedure "gtk_entry_completion_get_minimum_key_length"
		       (iptr) int))
  ;;
  (define gtk-entry-completion-get-model
    (foreign-procedure "gtk_entry_completion_get_model" (iptr) iptr))
  ;;
  (define gtk-entry-completion-get-popup-completion
    (foreign-procedure "gtk_entry_completion_get_popup_completion"
			(iptr) int))
  ;;
  (define gtk-entry-completion-get-popup-set-width
    (foreign-procedure "gtk_entry_completion_get_popup_set_width"
		       (iptr) int))
  ;;
  (define gtk-entry-completion-get-popup-single-match
    (foreign-procedure "gtk_entry_completion_get_popup_single_match"
		       (iptr) int))
  ;;
  (define gtk-entry-completion-get-text-column
    (foreign-procedure "gtk_entry_completion_get_text_column"
		       (iptr) int))
  ;;
  (define gtk-entry-completion-insert-prefix
    (foreign-procedure "gtk_entry_completion_insert_prefix" (iptr) void))
  ;;
  (define gtk-entry-completion-set-inline-completion
    (foreign-procedure "gtk_entry_completion_set_inline_completion"
		       (iptr int) void))
  ;;
  (define gtk-entry-completion-set-inline-selection
    (foreign-procedure "gtk_entry_completion_set_inline_selection"
		       (iptr int) void))
  ;;
  (define gtk-entry-completion-set-match-func
    (foreign-procedure "gtk_entry_completion_set_match_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-entry-completion-set-minimum-key-length
    (foreign-procedure "gtk_entry_completion_set_minimum_key_length"
		       (iptr int) void))
  ;;
  (define gtk-entry-completion-set-model
    (foreign-procedure "gtk_entry_completion_set_model" (iptr iptr) void))
  ;;
  (define gtk-entry-completion-set-popup-completion
    (foreign-procedure "gtk_entry_completion_set_popup_completion"
		       (iptr int) void))
  ;;
  (define gtk-entry-completion-set-popup-set-width
    (foreign-procedure "gtk_entry_completion_set_popup_set_width"
		       (iptr int) void))
  ;;
  (define gtk-entry-completion-set-popup-single-match
    (foreign-procedure "gtk_entry_completion_set_popup_single_match"
		       (iptr int) void))
  ;;
  (define gtk-entry-completion-set-text-column
    (foreign-procedure "gtk_entry_completion_set_text_column" (iptr int) void))
  ;;
  (define gtk-event-controller-get-current-event
    (foreign-procedure "gtk_event_controller_get_current_event" (iptr) iptr))
  ;;
  (define gtk-event-controller-get-current-event-device
    (foreign-procedure "gtk_event_controller_get_current_event_device" (iptr) iptr))
  ;;
  (define gtk-event-controller-get-current-event-state
    (foreign-procedure "gtk_event_controller_get_current_event_state" (iptr) iptr))
  ;;
  (define gtk-event-controller-get-current-event-time
    (foreign-procedure "gtk_event_controller_get_current_event_time" (iptr) int))
  ;;
  (define gtk-event-controller-get-name
    (foreign-procedure "gtk_event_controller_get_name" (iptr) string))
  ;;
  (define gtk-event-controller-get-propagation-limit
    (foreign-procedure "gtk_event_controller_get_propagation_limit"
		       (iptr) iptr))
  ;;
  (define gtk-event-controller-get-propagation-phase
    (foreign-procedure "gtk_event_controller_get_propagation_phase"
		       (iptr) iptr))
  ;;
  (define gtk-event-controller-get-widget
    (foreign-procedure "gtk_event_controller_get_widget" (iptr) iptr))
  ;;
  (define gtk-event-controller-reset
    (foreign-procedure "gtk_event_controller_reset" (iptr) void))
  ;;
  (define gtk-event-controller-set-name
    (foreign-procedure "gtk_event_controller_set_name" (iptr string) void))
  ;;
  (define gtk-event-controller-set-propagation-limit
    (foreign-procedure "gtk_event_controller_set_propagation_limit"
		       (iptr iptr) void))
  ;;
  (define gtk-event-controller-set-propagation-phase
    (foreign-procedure "gtk_event_controller_set_propagation_phase"
		       (iptr iptr) void))
  ;;
  (define gtk-event-controller-focus-new
    (foreign-procedure "gtk_event_controller_focus_new" () iptr))
  ;;
  (define gtk-event-controller-focus-contains-focus
    (foreign-procedure "gtk_event_controller_focus_contains_focus" (iptr) int))
  ;;
  (define gtk-event-controller-focus-is-focus
    (foreign-procedure "gtk_event_controller_focus_is_focus" (iptr) int))
  ;;
  (define gtk-event-controller-key-new
    (foreign-procedure "gtk_event_controller_key_new" () iptr))
  ;;
  (define gtk-event-controller-key-forward
    (foreign-procedure "gtk_event_controller_key_forward" (iptr iptr) int))
  ;;
  (define gtk-event-controller-key-get-group
    (foreign-procedure "gtk_event_controller_key_get_group" (iptr) int))
  ;;
  (define gtk-event-controller-key-get-im-context
    (foreign-procedure "gtk_event_controller_key_get_im_context" (iptr) iptr))
  ;;
  (define gtk-event-controller-key-set-im-context
    (foreign-procedure "gtk_event_controller_key_set_im_context"
		       (iptr iptr) void))
  ;;
  (define gtk-event-controller-legacy-new
    (foreign-procedure "gtk_event_controller_legacy_new" () iptr))
  ;;
  (define gtk-event-controller-motion-new
    (foreign-procedure "gtk_event_controller_motion_new" () iptr))
  ;;
  (define gtk-event-controller-motion-contains-pointer
    (foreign-procedure "gtk_event_controller_motion_contains_pointer"
		       (iptr) int))
  ;;
  (define gtk-event-controller-motion-is-pointer
    (foreign-procedure "gtk_event_controller_motion_is_pointer" (iptr) int))
  ;;
  (define gtk-event-controller-scroll-new
    (foreign-procedure "gtk_event_controller_scroll_new"
		       (iptr) iptr))
  ;;
  (define gtk-event-controller-scroll-get-flags
    (foreign-procedure "gtk_event_controller_scroll_get_flags" (iptr) iptr))
  ;;
  (define gtk-event-controller-scroll-set-flags
    (foreign-procedure "gtk_event_controller_scroll_set_flags"
		       (iptr iptr) void))
  ;;
  (define gtk-every-filter-new
    (foreign-procedure "gtk_every_filter_new" () iptr))
  ;;
  (define gtk-expander-new
    (foreign-procedure "gtk_expander_new" (string) iptr))
  ;;
  (define gtk-expander-new-with-mnemonic
    (foreign-procedure "gtk_expander_new_with_mnemonic" (string) iptr))
  ;;
  (define gtk-expander-get-child
    (foreign-procedure "gtk_expander_get_child" (iptr) iptr))
  ;;
  (define gtk-expander-get-expanded
    (foreign-procedure "gtk_expander_get_expanded" (iptr) int))
  ;;
  (define gtk-expander-get-label
    (foreign-procedure "gtk_expander_get_label" (iptr) string))
  ;;
  (define gtk-expander-get-label-widget
    (foreign-procedure "gtk_expander_get_label_widget" (iptr) iptr))
  ;;
  (define gtk-expander-get-resize-toplevel
    (foreign-procedure "gtk_expander_get_resize_toplevel" (iptr) int))
  ;;
  (define gtk-expander-get-use-markup
    (foreign-procedure "gtk_expander_get_use_markup" (iptr) int))
  ;;
  (define gtk-expander-get-use-underline
    (foreign-procedure "gtk_expander_get_use_underline" (iptr) int))
  ;;
  (define gtk-expander-set-child
    (foreign-procedure "gtk_expander_set_child" (iptr iptr) void))
  ;;
  (define gtk-expander-set-expanded
    (foreign-procedure "gtk_expander_set_expanded" (iptr int) void))
  ;;
  (define gtk-expander-set-label
    (foreign-procedure "gtk_expander_set_label" (iptr string) void))
  ;;
  (define gtk-expander-set-label-widget
    (foreign-procedure "gtk_expander_set_label_widget" (iptr iptr) void))
  ;;
  (define gtk-expander-set-resize-toplevel
    (foreign-procedure "gtk_expander_set_resize_toplevel" (iptr int) void))
  ;;
  (define gtk-expander-set-use-markup
    (foreign-procedure "gtk_expander_set_use_markup" (iptr int) void))
  ;;
  (define gtk-expander-set-use-underline
    (foreign-procedure "gtk_expander_set_use_underline" (iptr int) void))
  ;;
  (define gtk-expression-bind
    (foreign-procedure "gtk_expression_bind" (iptr iptr iptr string iptr) iptr))
  ;;
  (define gtk-expression-evaluate
    (foreign-procedure "gtk_expression_evaluate" (iptr iptr iptr) int))
  ;;
  (define gtk-expression-get-value-type
    (foreign-procedure "gtk_expression_get_value_type" (iptr) iptr))
  ;;
  (define gtk-expression-is-static
    (foreign-procedure "gtk_expression_is_static" (iptr) int))
  ;;
  (define gtk-expression-ref
    (foreign-procedure "gtk_expression_ref" (iptr) iptr))
  ;;
  (define gtk-expression-unref
    (foreign-procedure "gtk_expression_unref" (iptr) void))
  ;;
  (define gtk-expression-watch
    (foreign-procedure "gtk_expression_watch"
		       (iptr iptr iptr iptr iptr) iptr))
  ;;
  (define gtk-file-chooser-dialog-new
    (foreign-procedure "gtk_file_chooser_dialog_new"
		       (string iptr iptr string) iptr))
  ;;
  (define gtk-file-chooser-native-new
    (foreign-procedure "gtk_file_chooser_native_new"
		       (string iptr iptr string string) iptr))
  ;;
  (define gtk-file-chooser-native-get-accept-label
    (foreign-procedure "gtk_file_chooser_native_get_accept_label"
		       (iptr) string))
  ;;
  (define gtk-file-chooser-native-get-cancel-label
    (foreign-procedure "gtk_file_chooser_native_get_cancel_label"
		       (iptr) string))
  ;;
  (define gtk-file-chooser-native-set-accept-label
    (foreign-procedure "gtk_file_chooser_native_set_accept_label"
		       (iptr string) void))
  ;;
  (define gtk-file-chooser-native-set-cancel-label
    (foreign-procedure "gtk_file_chooser_native_set_cancel_label"
		       (iptr string) void))
  ;;
  (define gtk-file-chooser-widget-new
    (foreign-procedure "gtk_file_chooser_widget_new" (iptr) iptr))
  ;;
  (define gtk-file-filter-new
    (foreign-procedure "gtk_file_filter_new" () iptr))
  ;;
  (define gtk-file-filter-new-from-gvariant
    (foreign-procedure "gtk_file_filter_new_from_gvariant" (iptr) iptr))
  ;;
  (define gtk-file-filter-add-mime-type
    (foreign-procedure "gtk_file_filter_add_mime_type" (iptr string) void))
  ;;
  (define gtk-file-filter-add-pattern
    (foreign-procedure "gtk_file_filter_add_pattern" (iptr string) void))
  ;;
  (define gtk-file-filter-add-pixbuf-formats
    (foreign-procedure "gtk_file_filter_add_pixbuf_formats" (iptr) void))
  ;;
  (define gtk-file-filter-add-suffix
    (foreign-procedure "gtk_file_filter_add_suffix" (iptr string) void))
  ;;
  (define gtk-file-filter-get-attributes
    (foreign-procedure "gtk_file_filter_get_attributes" (iptr) string))
  ;;
  (define gtk-file-filter-get-name
    (foreign-procedure "gtk_file_filter_get_name" (iptr) string))
  ;;
  (define gtk-file-filter-set-name
    (foreign-procedure "gtk_file_filter_set_name" (iptr string) void))
  ;;
  (define gtk-file-filter-to-gvariant
    (foreign-procedure "gtk_file_filter_to_gvariant" (iptr) iptr))
  ;;
  (define gtk-filter-changed
    (foreign-procedure "gtk_filter_changed" (iptr iptr) void))
  ;;
  (define gtk-filter-get-strictness
    (foreign-procedure "gtk_filter_get_strictness" (iptr) iptr))
  ;;
  (define gtk-filter-match
    (foreign-procedure "gtk_filter_match" (iptr iptr) int))
  ;;
  (define gtk-filter-list-model-new
    (foreign-procedure "gtk_filter_list_model_new" (iptr iptr) iptr))
  ;;
  (define gtk-filter-list-model-get-filter
    (foreign-procedure "gtk_filter_list_model_get_filter" (iptr) iptr))
  ;;
  (define gtk-filter-list-model-get-incremental
    (foreign-procedure "gtk_filter_list_model_get_incremental" (iptr) int))
  ;;
  (define gtk-filter-list-model-get-model
    (foreign-procedure "gtk_filter_list_model_get_model" (iptr) iptr))
  ;;
  (define gtk-filter-list-model-get-pending
    (foreign-procedure "gtk_filter_list_model_get_pending" (iptr) int))
  ;;
  (define gtk-filter-list-model-set-filter
    (foreign-procedure "gtk_filter_list_model_set_filter" (iptr iptr) void))
  ;;
  (define gtk-filter-list-model-set-incremental
    (foreign-procedure "gtk_filter_list_model_set_incremental" (iptr int) void))
  ;;
  (define gtk-filter-list-model-set-model
    (foreign-procedure "gtk_filter_list_model_set_model" (iptr iptr) void))
  ;;
  (define gtk-fixed-new
    (foreign-procedure "gtk_fixed_new" () iptr))
  ;;
  (define gtk-fixed-get-child-position
    (foreign-procedure "gtk_fixed_get_child_position"
		       (iptr iptr double double) void))
  ;;
  (define gtk-fixed-get-child-transform
    (foreign-procedure "gtk_fixed_get_child_transform" (iptr iptr) iptr))
  ;;
  (define gtk-fixed-move
    (foreign-procedure "gtk_fixed_move" (iptr iptr double double) void))
  ;;
  (define gtk-fixed-put
    (foreign-procedure "gtk_fixed_put" (iptr iptr double double) void))
  ;;
  (define gtk-fixed-remove
    (foreign-procedure "gtk_fixed_remove" (iptr iptr) void))
  ;;
  (define gtk-fixed-set-child-transform
    (foreign-procedure "gtk_fixed_set_child_transform" (iptr iptr iptr) void))
  ;;
  (define gtk-fixed-layout-new
    (foreign-procedure "gtk_fixed_layout_new" () iptr))
  ;;
  (define gtk-fixed-layout-child-get-transform
    (foreign-procedure "gtk_fixed_layout_child_get_transform" (iptr) iptr))
  ;;
  (define gtk-fixed-layout-child-set-transform
    (foreign-procedure "gtk_fixed_layout_child_set_transform" (iptr iptr) void))
  ;;
  (define gtk-flatten-list-model-new
    (foreign-procedure "gtk_flatten_list_model_new" (iptr) iptr))
  ;;
  (define gtk-flatten-list-model-get-model
    (foreign-procedure "gtk_flatten_list_model_get_model" (iptr) iptr))
  ;;
  (define gtk-flatten-list-model-get-model-for-item
    (foreign-procedure "gtk_flatten_list_model_get_model_for_item"
		       (iptr int) iptr))
  ;;
  (define gtk-flatten-list-model-set-model
    (foreign-procedure "gtk_flatten_list_model_set_model" (iptr iptr) void))
  ;;
  (define gtk-flow-box-new
    (foreign-procedure "gtk_flow_box_new" () iptr))
  ;;
  (define gtk-flow-box-bind-model
    (foreign-procedure "gtk_flow_box_bind_model"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-flow-box-get-activate-on-single-click
    (foreign-procedure "gtk_flow_box_get_activate_on_single_click"
		       (iptr) int))
  ;;
  (define gtk-flow-box-get-child-at-index
    (foreign-procedure "gtk_flow_box_get_child_at_index" (iptr int) iptr))
  ;;
  (define gtk-flow-box-get-child-at-pos
    (foreign-procedure "gtk_flow_box_get_child_at_pos" (iptr int int) iptr))
  ;;
  (define gtk-flow-box-get-column-spacing
    (foreign-procedure "gtk_flow_box_get_column_spacing" (iptr) int))
  ;;
  (define gtk-flow-box-get-homogeneous
    (foreign-procedure "gtk_flow_box_get_homogeneous" (iptr) int))
  ;;
  (define gtk-flow-box-get-max-children-per-line
    (foreign-procedure "gtk_flow_box_get_max_children_per_line" (iptr) int))
  ;;
  (define gtk-flow-box-get-min-children-per-line
    (foreign-procedure "gtk_flow_box_get_min_children_per_line" (iptr) int))
  ;;
  (define gtk-flow-box-get-row-spacing
    (foreign-procedure "gtk_flow_box_get_row_spacing" (iptr) int))
  ;;
  (define gtk-flow-box-get-selected-children
    (foreign-procedure "gtk_flow_box_get_selected_children" (iptr) iptr))
  ;;
  (define gtk-flow-box-get-selection-mode
    (foreign-procedure "gtk_flow_box_get_selection_mode" (iptr) iptr))
  ;;
  (define gtk-flow-box-insert
    (foreign-procedure "gtk_flow_box_insert" (iptr iptr int) void))
  ;;
  (define gtk-flow-box-invalidate-filter
    (foreign-procedure "gtk_flow_box_invalidate_filter" (iptr) void))
  ;;
  (define gtk-flow-box-invalidate-sort
    (foreign-procedure "gtk_flow_box_invalidate_sort" (iptr) void))
  ;;
  (define gtk-flow-box-remove
    (foreign-procedure "gtk_flow_box_remove" (iptr iptr) void))
  ;;
  (define gtk-flow-box-select-all
    (foreign-procedure "gtk_flow_box_select_all" (iptr) void))
  ;;
  (define gtk-flow-box-select-child
    (foreign-procedure "gtk_flow_box_select_child" (iptr iptr) void))
  ;;
  (define gtk-flow-box-selected-foreach
    (foreign-procedure "gtk_flow_box_selected_foreach" (iptr iptr iptr) void))
  ;;
  (define gtk-flow-box-set-activate-on-single-click
    (foreign-procedure "gtk_flow_box_set_activate_on_single_click"
		       (iptr int) void))
  ;;
  (define gtk-flow-box-set-column-spacing
    (foreign-procedure "gtk_flow_box_set_column_spacing" (iptr int) void))
  ;;
  (define gtk-flow-box-set-filter-func
    (foreign-procedure "gtk_flow_box_set_filter_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-flow-box-set-hadjustment
    (foreign-procedure "gtk_flow_box_set_hadjustment" (iptr iptr) void))
  ;;
  (define gtk-flow-box-set-homogeneous
    (foreign-procedure "gtk_flow_box_set_homogeneous" (iptr int) void))
  ;;
  (define gtk-flow-box-set-max-children-per-line
    (foreign-procedure "gtk_flow_box_set_max_children_per_line"
		       (iptr int) void))
  ;;
  (define gtk-flow-box-set-min-children-per-line
    (foreign-procedure "gtk_flow_box_set_min_children_per_line"
		       (iptr int) void))
  ;;
  (define gtk-flow-box-set-row-spacing
    (foreign-procedure "gtk_flow_box_set_row_spacing" (iptr int) void))
  ;;
  (define gtk-flow-box-set-selection-mode
    (foreign-procedure "gtk_flow_box_set_selection_mode" (iptr iptr) void))
  ;;
  (define gtk-flow-box-set-sort-func
    (foreign-procedure "gtk_flow_box_set_sort_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-flow-box-set-vadjustment
    (foreign-procedure "gtk_flow_box_set_vadjustment" (iptr iptr) void))
  ;;
  (define gtk-flow-box-unselect-all
    (foreign-procedure "gtk_flow_box_unselect_all" (iptr) void))
  ;;
  (define gtk-flow-box-unselect-child
    (foreign-procedure "gtk_flow_box_unselect_child" (iptr iptr) void))
  ;;
  (define gtk-flow-box-child-new
    (foreign-procedure "gtk_flow_box_child_new" () iptr))
  ;;
  (define gtk-flow-box-child-changed
    (foreign-procedure "gtk_flow_box_child_changed" (iptr) void))
  ;;
  (define gtk-flow-box-child-get-child
    (foreign-procedure "gtk_flow_box_child_get_child" (iptr) iptr))
  ;;
  (define gtk-flow-box-child-get-index
    (foreign-procedure "gtk_flow_box_child_get_index" (iptr) int))
  ;;
  (define gtk-flow-box-child-is-selected
    (foreign-procedure "gtk_flow_box_child_is_selected" (iptr) int))
  ;;
  (define gtk-flow-box-child-set-child
    (foreign-procedure "gtk_flow_box_child_set_child" (iptr iptr) void))
  ;;
  (define gtk-font-button-new
    (foreign-procedure "gtk_font_button_new" () iptr))
  ;;
  (define gtk-font-button-new-with-font
    (foreign-procedure "gtk_font_button_new_with_font" (string) iptr))
  ;;
  (define gtk-font-button-get-modal
    (foreign-procedure "gtk_font_button_get_modal" (iptr) int))
  ;;
  (define gtk-font-button-get-title
    (foreign-procedure "gtk_font_button_get_title" (iptr) string))
  ;;
  (define gtk-font-button-get-use-font
    (foreign-procedure "gtk_font_button_get_use_font" (iptr) int))
  ;;
  (define gtk-font-button-get-use-size
    (foreign-procedure "gtk_font_button_get_use_size" (iptr) int))
  ;;
  (define gtk-font-button-set-modal
    (foreign-procedure "gtk_font_button_set_modal" (iptr int) void))
  ;;
  (define gtk-font-button-set-title
    (foreign-procedure "gtk_font_button_set_title" (iptr string) void))
  ;;
  (define gtk-font-button-set-use-font
    (foreign-procedure "gtk_font_button_set_use_font" (iptr int) void))
  ;;
  (define gtk-font-button-set-use-size
    (foreign-procedure "gtk_font_button_set_use_size" (iptr int) void))
  ;;
  (define gtk-font-chooser-dialog-new
    (foreign-procedure "gtk_font_chooser_dialog_new" (string iptr) iptr))
  ;;
  (define gtk-font-chooser-widget-new
    (foreign-procedure "gtk_font_chooser_widget_new" () iptr))
  ;;
  (define gtk-frame-new
    (foreign-procedure "gtk_frame_new" (string) iptr))
  ;;
  (define gtk-frame-get-child
    (foreign-procedure "gtk_frame_get_child" (iptr) iptr))
  ;;
  (define gtk-frame-get-label
    (foreign-procedure "gtk_frame_get_label" (iptr) string))
  ;;
  (define gtk-frame-get-label-align
    (foreign-procedure "gtk_frame_get_label_align" (iptr) float))
  ;;
  (define gtk-frame-get-label-widget
    (foreign-procedure "gtk_frame_get_label_widget" (iptr) iptr))
  ;;
  (define gtk-frame-set-child
    (foreign-procedure "gtk_frame_set_child" (iptr iptr) void))
  ;;
  (define gtk-frame-set-label
    (foreign-procedure "gtk_frame_set_label" (iptr string) void))
  ;;
  (define gtk-frame-set-label-align
    (foreign-procedure "gtk_frame_set_label_align" (iptr float) void))
  ;;
  (define gtk-frame-set-label-widget
    (foreign-procedure "gtk_frame_set_label_widget" (iptr iptr) void))
  ;;
  (define gtk-gesture-get-bounding-box
    (foreign-procedure "gtk_gesture_get_bounding_box" (iptr iptr) int))
  ;;
  (define gtk-gesture-get-bounding-box-center
    (foreign-procedure "gtk_gesture_get_bounding_box_center"
		       (iptr double double) int))
  ;;
  (define gtk-gesture-get-device
    (foreign-procedure "gtk_gesture_get_device" (iptr) iptr))
  ;;
  (define gtk-gesture-get-group
    (foreign-procedure "gtk_gesture_get_group" (iptr) iptr))
  ;;
  (define gtk-gesture-get-last-event
    (foreign-procedure "gtk_gesture_get_last_event" (iptr iptr) iptr))
  ;;
  (define gtk-gesture-get-last-updated-sequence
    (foreign-procedure "gtk_gesture_get_last_updated_sequence" (iptr) iptr))
  ;;
  (define gtk-gesture-get-point
    (foreign-procedure "gtk_gesture_get_point" (iptr iptr double double) int))
  ;;
  (define gtk-gesture-get-sequence-state
    (foreign-procedure "gtk_gesture_get_sequence_state" (iptr iptr) iptr))
  ;;
  (define gtk-gesture-get-sequences
    (foreign-procedure "gtk_gesture_get_sequences" (iptr) iptr))
  ;;
  (define gtk-gesture-group
    (foreign-procedure "gtk_gesture_group" (iptr iptr) void))
  ;;
  (define gtk-gesture-handles-sequence
    (foreign-procedure "gtk_gesture_handles_sequence" (iptr iptr) int))
  ;;
  (define gtk-gesture-is-active
    (foreign-procedure "gtk_gesture_is_active" (iptr) int))
  ;;
  (define gtk-gesture-is-grouped-with
    (foreign-procedure "gtk_gesture_is_grouped_with" (iptr iptr) int))
  ;;
  (define gtk-gesture-is-recognized
    (foreign-procedure "gtk_gesture_is_recognized" (iptr) int))
  ;;
  (define gtk-gesture-set-sequence-state
    (foreign-procedure "gtk_gesture_set_sequence_state"
		       (iptr iptr iptr) int))
  ;;
  (define gtk-gesture-set-state
    (foreign-procedure "gtk_gesture_set_state" (iptr iptr) int))
  ;;
  (define gtk-gesture-ungroup
    (foreign-procedure "gtk_gesture_ungroup" (iptr) void))
  ;;
  (define gtk-gesture-click-new
    (foreign-procedure "gtk_gesture_click_new" () iptr))
  ;;
  (define gtk-gesture-drag-new
    (foreign-procedure "gtk_gesture_drag_new" () iptr))
  ;;
  (define gtk-gesture-drag-get-offset
    (foreign-procedure "gtk_gesture_drag_get_offset" 
		       (iptr double double) int))
  ;;
  (define gtk-gesture-drag-get-start-point
    (foreign-procedure "gtk_gesture_drag_get_start_point"
		       (iptr double double) int))
  ;;
  (define gtk-gesture-long-press-new
    (foreign-procedure "gtk_gesture_long_press_new" () iptr))
  ;;
  (define gtk-gesture-long-press-get-delay-factor
    (foreign-procedure "gtk_gesture_long_press_get_delay_factor"
		       (iptr) double))
  ;;
  (define gtk-gesture-long-press-set-delay-factor
    (foreign-procedure "gtk_gesture_long_press_set_delay_factor"
		       (iptr double) void))
  ;;
  (define gtk-gesture-pan-new
    (foreign-procedure "gtk_gesture_pan_new" (iptr) iptr))
  ;;
  (define gtk-gesture-pan-get-orientation
    (foreign-procedure "gtk_gesture_pan_get_orientation" (iptr) iptr))
  ;;
  (define gtk-gesture-pan-set-orientation
    (foreign-procedure "gtk_gesture_pan_set_orientation" (iptr iptr) void))
  ;;
  (define gtk-gesture-rotate-new
    (foreign-procedure "gtk_gesture_rotate_new" () iptr))
  ;;
  (define gtk-gesture-rotate-get-angle-delta
    (foreign-procedure "gtk_gesture_rotate_get_angle_delta" (iptr) double))
  ;;
  (define gtk-gesture-single-get-button
    (foreign-procedure "gtk_gesture_single_get_button" (iptr) int))
  ;;
  (define gtk-gesture-single-get-current-button
    (foreign-procedure "gtk_gesture_single_get_current_button" (iptr) int))
  ;;
  (define gtk-gesture-single-get-current-sequence
    (foreign-procedure "gtk_gesture_single_get_current_sequence" (iptr) iptr))
  ;;
  (define gtk-gesture-single-get-exclusive
    (foreign-procedure "gtk_gesture_single_get_exclusive" (iptr) int))
  ;;
  (define gtk-gesture-single-get-touch-only
    (foreign-procedure "gtk_gesture_single_get_touch_only" (iptr) int))
  ;;
  (define gtk-gesture-single-set-button
    (foreign-procedure "gtk_gesture_single_set_button" (iptr int) void))
  ;;
  (define gtk-gesture-single-set-exclusive
    (foreign-procedure "gtk_gesture_single_set_exclusive" (iptr int) void))
  ;;
  (define gtk-gesture-single-set-touch-only
    (foreign-procedure "gtk_gesture_single_set_touch_only" (iptr int) void))
  ;;
  (define gtk-gesture-stylus-new
    (foreign-procedure "gtk_gesture_stylus_new" () iptr))
  ;;
  (define gtk-gesture-stylus-get-axes
    (foreign-procedure "gtk_gesture_stylus_get_axes" (iptr iptr double) int))
  ;;
  (define gtk-gesture-stylus-get-axis
    (foreign-procedure "gtk_gesture_stylus_get_axis" (iptr iptr double) int))
  ;;
  (define gtk-gesture-stylus-get-backlog
    (foreign-procedure "gtk_gesture_stylus_get_backlog" (iptr iptr int) int))
  ;;
  (define gtk-gesture-stylus-get-device-tool
    (foreign-procedure "gtk_gesture_stylus_get_device_tool" (iptr) iptr))
  ;;
  (define gtk-gesture-swipe-new
    (foreign-procedure "gtk_gesture_swipe_new" () iptr))
  ;;
  (define gtk-gesture-swipe-get-velocity
    (foreign-procedure "gtk_gesture_swipe_get_velocity"
		       (iptr double double) int))
  ;;
  (define gtk-gesture-zoom-new
    (foreign-procedure "gtk_gesture_zoom_new" () iptr))
  ;;
  (define gtk-gesture-zoom-get-scale-delta
    (foreign-procedure "gtk_gesture_zoom_get_scale_delta" (iptr) double))
  ;;
  (define gtk-gl-area-new
    (foreign-procedure "gtk_gl_area_new" () iptr))
  ;;
  (define gtk-gl-area-attach-buffers
    (foreign-procedure "gtk_gl_area_attach_buffers" (iptr) void))
  ;;
  (define gtk-gl-area-get-auto-render
    (foreign-procedure "gtk_gl_area_get_auto_render" (iptr) iptr))
  ;;
  (define gtk-gl-area-get-context
    (foreign-procedure "gtk_gl_area_get_context" (iptr) iptr))
  ;;
  (define gtk-gl-area-get-error
    (foreign-procedure "gtk_gl_area_get_error" (iptr) iptr))
  ;;
  (define gtk-gl-area-get-has-depth-buffer
    (foreign-procedure "gtk_gl_area_get_has_depth_buffer" (iptr) int))
  ;;
  (define gtk-gl-area-get-has-stencil-buffer
    (foreign-procedure "gtk_gl_area_get_has_stencil_buffer" (iptr) int))
  ;;
  (define gtk-gl-area-get-required-version
    (foreign-procedure "gtk_gl_area_get_required_version" (iptr int int) void))
  ;;
  (define gtk-gl-area-get-use-es
    (foreign-procedure "gtk_gl_area_get_use_es" (iptr) int))
  ;;
  (define gtk-gl-area-make-current
    (foreign-procedure "gtk_gl_area_make_current" (iptr) void))
  ;;
  (define gtk-gl-area-queue-render
    (foreign-procedure "gtk_gl_area_queue_render" (iptr) void))
  ;;
  (define gtk-gl-area-set-auto-render
    (foreign-procedure "gtk_gl_area_set_auto_render" (iptr int) void))
  ;;
  (define gtk-gl-area-set-error
    (foreign-procedure "gtk_gl_area_set_error" (iptr iptr) void))
  ;;
  (define gtk-gl-area-set-has-depth-buffer
    (foreign-procedure "gtk_gl_area_set_has_depth_buffer" (iptr int) void))
  ;;
  (define gtk-gl-area-set-has-stencil-buffer
    (foreign-procedure "gtk_gl_area_set_has_stencil_buffer"
		       (iptr int) void))
  ;;
  (define gtk-gl-area-set-required-version
    (foreign-procedure "gtk_gl_area_set_required_version"
		       (iptr int int) void))
  ;;
  (define gtk-gl-area-set-use-es
    (foreign-procedure "gtk_gl_area_set_use_es" (iptr int) void))
  ;;
  (define gtk-grid-new
    (foreign-procedure "gtk_grid_new" () iptr))
  ;;
  (define gtk-grid-attach
    (foreign-procedure "gtk_grid_attach" (iptr iptr int int int int) void))
  ;;
  (define gtk-grid-attach-next-to
    (foreign-procedure "gtk_grid_attach_next_to"
		       (iptr iptr iptr iptr int int) void))
  ;;
  (define gtk-grid-get-baseline-row
    (foreign-procedure "gtk_grid_get_baseline_row" (iptr) int))
  ;;
  (define gtk-grid-get-child-at
    (foreign-procedure "gtk_grid_get_child_at" (iptr int int) iptr))
  ;;
  (define gtk-grid-get-column-homogeneous
    (foreign-procedure "gtk_grid_get_column_homogeneous" (iptr) int))
  ;;
  (define gtk-grid-get-column-spacing
    (foreign-procedure "gtk_grid_get_column_spacing" (iptr) int))
  ;;
  (define gtk-grid-get-row-baseline-position
    (foreign-procedure "gtk_grid_get_row_baseline_position" (iptr int) iptr))
  ;;
  (define gtk-grid-get-row-homogeneous
    (foreign-procedure "gtk_grid_get_row_homogeneous" (iptr) int))
  ;;
  (define gtk-grid-get-row-spacing
    (foreign-procedure "gtk_grid_get_row_spacing" (iptr) int))
  ;;
  (define gtk-grid-insert-column
    (foreign-procedure "gtk_grid_insert_column" (iptr int) void))
  ;;
  (define gtk-grid-insert-next-to
    (foreign-procedure "gtk_grid_insert_next_to" (iptr iptr int) void))
  ;;
  (define gtk-grid-insert-row
    (foreign-procedure "gtk_grid_insert_row" (iptr int) void))
  ;;
  (define gtk-grid-query-child
    (foreign-procedure "gtk_grid_query_child" (iptr iptr int int int int) void))
  ;;
  (define gtk-grid-remove
    (foreign-procedure "gtk_grid_remove" (iptr iptr) void))
  ;;
  (define gtk-grid-remove-column
    (foreign-procedure "gtk_grid_remove_column" (iptr int) void))
  ;;
  (define gtk-grid-remove-row
    (foreign-procedure "gtk_grid_remove_row" (iptr int) void))
  ;;
  (define gtk-grid-set-baseline-row
    (foreign-procedure "gtk_grid_set_baseline_row" (iptr int) void))
  ;;
  (define gtk-grid-set-column-homogeneous
    (foreign-procedure "gtk_grid_set_column_homogeneous" (iptr int) void))
  ;;
  (define gtk-grid-set-column-spacing
    (foreign-procedure "gtk_grid_set_column_spacing" (iptr int) void))
  ;;
  (define gtk-grid-set-row-baseline-position
    (foreign-procedure "gtk_grid_set_row_baseline_position"
		       (iptr int int) void))
  ;;
  (define gtk-grid-set-row-homogeneous
    (foreign-procedure "gtk_grid_set_row_homogeneous" (iptr int) void))
  ;;
  (define gtk-grid-set-row-spacing
    (foreign-procedure "gtk_grid_set_row_spacing" (iptr int) void))
  ;;
  (define gtk-grid-layout-new
    (foreign-procedure "gtk_grid_layout_new" () iptr))
  ;;
  (define gtk-grid-layout-get-baseline-row
    (foreign-procedure "gtk_grid_layout_get_baseline_row" (iptr) int))
  ;;
  (define gtk-grid-layout-get-column-homogeneous
    (foreign-procedure "gtk_grid_layout_get_column_homogeneous" (iptr) int))
  ;;
  (define gtk-grid-layout-get-column-spacing
    (foreign-procedure "gtk_grid_layout_get_column_spacing" (iptr) int))
  ;;
  (define gtk-grid-layout-get-row-baseline-position
    (foreign-procedure "gtk_grid_layout_get_row_baseline_position"
		       (iptr int) iptr))
  ;;
  (define gtk-grid-layout-get-row-homogeneous
    (foreign-procedure "gtk_grid_layout_get_row_homogeneous" (iptr) int))
  ;;
  (define gtk-grid-layout-get-row-spacing
    (foreign-procedure "gtk_grid_layout_get_row_spacing" (iptr) int))
  ;;
  (define gtk-grid-layout-set-baseline-row
    (foreign-procedure "gtk_grid_layout_set_baseline_row" (iptr int) void))
  ;;
  (define gtk-grid-layout-set-column-homogeneous
    (foreign-procedure "gtk_grid_layout_set_column_homogeneous"
		       (iptr int) void))
  ;;
  (define gtk-grid-layout-set-column-spacing
    (foreign-procedure "gtk_grid_layout_set_column_spacing" (iptr int) void))
  ;;
  (define gtk-grid-layout-set-row-baseline-position
    (foreign-procedure "gtk_grid_layout_set_row_baseline_position"
		       (iptr int iptr) void))
  ;;
  (define gtk-grid-layout-set-row-homogeneous
    (foreign-procedure "gtk_grid_layout_set_row_homogeneous" (iptr int) void))
  ;;
  (define gtk-grid-layout-set-row-spacing
    (foreign-procedure "gtk_grid_layout_set_row_spacing" (iptr int) void))
  ;;
  (define gtk-grid-layout-child-get-column
    (foreign-procedure "gtk_grid_layout_child_get_column" (iptr) int))
  ;;
  (define gtk-grid-layout-child-get-column-span
    (foreign-procedure "gtk_grid_layout_child_get_column_span"
		       (iptr) int))
  ;;
  (define gtk-grid-layout-child-get-row
    (foreign-procedure "gtk_grid_layout_child_get_row" (iptr) int))
  ;;
  (define gtk-grid-layout-child-get-row-span
    (foreign-procedure "gtk_grid_layout_child_get_row_span" (iptr) int))
  ;;
  (define gtk-grid-layout-child-set-column
    (foreign-procedure "gtk_grid_layout_child_set_column" (iptr int) void))
  ;;
  (define gtk-grid-layout-child-set-column-span
    (foreign-procedure "gtk_grid_layout_child_set_column_span"
		       (iptr int) void))
  ;;
  (define gtk-grid-layout-child-set-row
    (foreign-procedure "gtk_grid_layout_child_set_row" (iptr int) void))
  ;;
  (define gtk-grid-layout-child-set-row-span
    (foreign-procedure "gtk_grid_layout_child_set_row_span" (iptr int) void))
  ;;
  (define gtk-grid-view-new
    (foreign-procedure "gtk_grid_view_new" () iptr))
  ;;
  (define gtk-grid-view-get-enable-rubberband
    (foreign-procedure "gtk_grid_view_get_enable_rubberband" (iptr) int))
  ;;
  (define gtk-grid-view-get-factory
    (foreign-procedure "gtk_grid_view_get_factory" (iptr) iptr))
  ;;
  (define gtk-grid-view-get-max-columns
    (foreign-procedure "gtk_grid_view_get_max_columns" (iptr) int))
  ;;
  (define gtk-grid-view-get-min-columns
    (foreign-procedure "gtk_grid_view_get_min_columns" (iptr) int))
  ;;
  (define gtk-grid-view-get-model
    (foreign-procedure "gtk_grid_view_get_model" (iptr) iptr))
  ;;
  (define gtk-grid-view-get-single-click-activate
    (foreign-procedure "gtk_grid_view_get_single_click_activate" (iptr) int))
  ;;
  (define gtk-grid-view-set-enable-rubberband
    (foreign-procedure "gtk_grid_view_set_enable_rubberband" (iptr int) void))
  ;;
  (define gtk-grid-view-set-factory
    (foreign-procedure "gtk_grid_view_set_factory" (iptr iptr) void))
  ;;
  (define gtk-grid-view-set-max-columns
    (foreign-procedure "gtk_grid_view_set_max_columns" (iptr int) void))
  ;;
  (define gtk-grid-view-set-min-columns
    (foreign-procedure "gtk_grid_view_set_min_columns" (iptr int) void))
  ;;
  (define gtk-grid-view-set-model
    (foreign-procedure "gtk_grid_view_set_model" (iptr iptr) void))
  ;;
  (define gtk-grid-view-set-single-click-activate
    (foreign-procedure "gtk_grid_view_set_single_click_activate" (iptr int) void))
  ;;
  (define gtk-header-bar-new
    (foreign-procedure "gtk_header_bar_new" () iptr))
  ;;
  (define gtk-header-bar-get-decoration-layout
    (foreign-procedure "gtk_header_bar_get_decoration_layout" (iptr) string))
  ;;
  (define gtk-header-bar-get-show-title-buttons
    (foreign-procedure "gtk_header_bar_get_show_title_buttons" (iptr) int))
  ;;
  (define gtk-header-bar-get-title-widget
    (foreign-procedure "gtk_header_bar_get_title_widget" (iptr) iptr))
  ;;
  (define gtk-header-bar-pack-end
    (foreign-procedure "gtk_header_bar_pack_end" (iptr iptr) void))
  ;;
  (define gtk-header-bar-pack-start
    (foreign-procedure "gtk_header_bar_pack_start" (iptr iptr) void))
  ;;
  (define gtk-header-bar-remove
    (foreign-procedure "gtk_header_bar_remove" (iptr iptr) void))
  ;;
  (define gtk-header-bar-set-decoration-layout
    (foreign-procedure "gtk_header_bar_set_decoration_layout"
		       (iptr string) void))
  ;;
  (define gtk-header-bar-set-show-title-buttons
    (foreign-procedure "gtk_header_bar_set_show_title_buttons"
		       (iptr int) void))
  ;;
  (define gtk-header-bar-set-title-widget
    (foreign-procedure "gtk_header_bar_set_title_widget" (iptr iptr) void))
  ;;
  (define gtk-icon-paintable-new-for-file
    (foreign-procedure "gtk_icon_paintable_new_for_file" (iptr int int) iptr))
  ;;
  (define gtk-icon-paintable-get-file
    (foreign-procedure "gtk_icon_paintable_get_file" (iptr) iptr))
  ;;
  (define gtk-icon-paintable-get-icon-name
    (foreign-procedure "gtk_icon_paintable_get_icon_name" (iptr) string))
  ;;
  (define gtk-icon-paintable-is-symbolic
    (foreign-procedure "gtk_icon_paintable_is_symbolic" (iptr) int))
  ;;
  (define gtk-icon-theme-new
    (foreign-procedure "gtk_icon_theme_new" () iptr))
  ;;
  (define gtk-icon-theme-get-for-display
    (foreign-procedure "gtk_icon_theme_get_for_display" (iptr) iptr))
  ;;
  (define gtk-icon-theme-add-resource-path
    (foreign-procedure "gtk_icon_theme_add_resource_path" (iptr string) void))
  ;;
  (define gtk-icon-theme-add-search-path
    (foreign-procedure "gtk_icon_theme_add_search_path" (iptr string) void))
  ;;
  (define gtk-icon-theme-get-display
    (foreign-procedure "gtk_icon_theme_get_display" (iptr) iptr))
  ;;
  (define gtk-icon-theme-get-icon-names
    (foreign-procedure "gtk_icon_theme_get_icon_names" (iptr) string))
  ;;
  (define gtk-icon-theme-get-icon-sizes
    (foreign-procedure "gtk_icon_theme_get_icon_sizes" (iptr string) int))
  ;;
  (define gtk-icon-theme-get-resource-path
    (foreign-procedure "gtk_icon_theme_get_resource_path" (iptr) string))
  ;;
  (define gtk-icon-theme-get-search-path
    (foreign-procedure "gtk_icon_theme_get_search_path" (iptr) string))
  ;;
  (define gtk-icon-theme-get-theme-name
    (foreign-procedure "gtk_icon_theme_get_theme_name" (iptr) string))
  ;;
  (define gtk-icon-theme-has-gicon
    (foreign-procedure "gtk_icon_theme_has_gicon" (iptr iptr) int))
  ;;
  (define gtk-icon-theme-has-icon
    (foreign-procedure "gtk_icon_theme_has_icon" (iptr string) int))
  ;;
  (define gtk-icon-theme-lookup-by-gicon
    (foreign-procedure "gtk_icon_theme_lookup_by_gicon"
		       (iptr iptr int int iptr iptr) iptr))
  ;;
  (define gtk-icon-theme-lookup-icon
    (foreign-procedure "gtk_icon_theme_lookup_icon"
		       (iptr string string int int iptr iptr) iptr))
  ;;
  (define gtk-icon-theme-set-resource-path
    (foreign-procedure "gtk_icon_theme_set_resource_path" (iptr string) void))
  ;;
  (define gtk-icon-theme-set-search-path
    (foreign-procedure "gtk_icon_theme_set_search_path" (iptr string) void))
  ;;
  (define gtk-icon-theme-set-theme-name
    (foreign-procedure "gtk_icon_theme_set_theme_name" (iptr string) void))
  ;;
  (define gtk-icon-view-new
    (foreign-procedure "gtk_icon_view_new" () iptr))
  ;;
  (define gtk-icon-view-new-with-area
    (foreign-procedure "gtk_icon_view_new_with_area" (iptr) iptr))
  ;;
  (define gtk-icon-view-new-with-model
    (foreign-procedure "gtk_icon_view_new_with_model" (iptr) iptr))
  ;;
  (define gtk-icon-view-create-drag-icon
    (foreign-procedure "gtk_icon_view_create_drag_icon" (iptr iptr) iptr))
  ;;
  (define gtk-icon-view-enable-model-drag-dest
    (foreign-procedure "gtk_icon_view_enable_model_drag_dest"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-enable-model-drag-source
    (foreign-procedure "gtk_icon_view_enable_model_drag_source"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-get-activate-on-single-click
    (foreign-procedure "gtk_icon_view_get_activate_on_single_click"
		       (iptr) int))
  ;;
  (define gtk-icon-view-get-cell-rect
    (foreign-procedure "gtk_icon_view_get_cell_rect"
		       (iptr iptr iptr iptr) int))
  ;;
  (define gtk-icon-view-get-column-spacing
    (foreign-procedure "gtk_icon_view_get_column_spacing" (iptr) int))
  ;;
  (define gtk-icon-view-get-columns
    (foreign-procedure "gtk_icon_view_get_columns" (iptr) int))
  ;;
  (define gtk-icon-view-get-cursor
    (foreign-procedure "gtk_icon_view_get_cursor" (iptr iptr iptr) int))
  ;;
  (define gtk-icon-view-get-dest-item-at-pos
    (foreign-procedure "gtk_icon_view_get_dest_item_at_pos"
		       (iptr int int iptr iptr) int))
  ;;
  (define gtk-icon-view-get-drag-dest-item
    (foreign-procedure "gtk_icon_view_get_drag_dest_item"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-get-item-at-pos
    (foreign-procedure "gtk_icon_view_get_item_at_pos"
		       (iptr int int iptr iptr) int))
  ;;
  (define gtk-icon-view-get-item-column
    (foreign-procedure "gtk_icon_view_get_item_column" (iptr iptr) int))
  ;;
  (define gtk-icon-view-get-item-orientation
    (foreign-procedure "gtk_icon_view_get_item_orientation" (iptr) iptr))
  ;;
  (define gtk-icon-view-get-item-padding
    (foreign-procedure "gtk_icon_view_get_item_padding" (iptr iptr) int))
  ;;
  (define gtk-icon-view-get-item-row
    (foreign-procedure "gtk_icon_view_get_item_row" (iptr) int))
  ;;
  (define gtk-icon-view-get-item-width
    (foreign-procedure "gtk_icon_view_get_item_width" (iptr) int))
  ;;
  (define gtk-icon-view-get-margin
    (foreign-procedure "gtk_icon_view_get_margin" (iptr) int))
  ;;
  (define gtk-icon-view-get-markup-column
    (foreign-procedure "gtk_icon_view_get_markup_column" (iptr) int))
  ;;
  (define gtk-icon-view-get-model
    (foreign-procedure "gtk_icon_view_get_model" (iptr) iptr))
  ;;
  (define gtk-icon-view-get-path-at-pos
    (foreign-procedure "gtk_icon_view_get_path_at_pos" (iptr int int) iptr))
  ;;
  (define gtk-icon-view-get-pixbuf-column
    (foreign-procedure "gtk_icon_view_get_pixbuf_column" (iptr) int))
  ;;
  (define gtk-icon-view-get-reorderable
    (foreign-procedure "gtk_icon_view_get_reorderable" (iptr) int))
  ;;
  (define gtk-icon-view-get-row-spacing
    (foreign-procedure "gtk_icon_view_get_row_spacing" (iptr) int))
  ;;
  (define gtk-icon-view-get-selected-items
    (foreign-procedure "gtk_icon_view_get_selected_items" (iptr) iptr))
  ;;
  (define gtk-icon-view-get-selection-mode
    (foreign-procedure "gtk_icon_view_get_selection_mode" (iptr) iptr))
  ;;
  (define gtk-icon-view-get-spacing
    (foreign-procedure "gtk_icon_view_get_spacing" (iptr) int))
  ;;
  (define gtk-icon-view-get-text-column
    (foreign-procedure "gtk_icon_view_get_text_column" (iptr) int))
  ;;
  (define gtk-icon-view-get-tooltip-column
    (foreign-procedure "gtk_icon_view_get_tooltip_column" (iptr) int))
  ;;
  (define gtk-icon-view-get-tooltip-context
    (foreign-procedure "gtk_icon_view_get_tooltip_context"
		       (iptr int int int iptr iptr iptr) int))
  ;;
  (define gtk-icon-view-get-visible-range
    (foreign-procedure "gtk_icon_view_get_visible_range" (iptr iptr iptr) int))
  ;;
  (define gtk-icon-view-item-activated
    (foreign-procedure "gtk_icon_view_item_activated" (iptr iptr) void))
  ;;
  (define gtk-icon-view-path-is-selected
    (foreign-procedure "gtk_icon_view_path_is_selected" (iptr iptr) int))
  ;;
  (define gtk-icon-view-scroll-to-path
    (foreign-procedure "gtk_icon_view_scroll_to_path"
		       (iptr iptr int float float) void))
  ;;
  (define gtk-icon-view-select-all
    (foreign-procedure "gtk_icon_view_select_all" (iptr) void))
  ;;
  (define gtk-icon-view-select-path
    (foreign-procedure "gtk_icon_view_select_path" (iptr iptr) void))
  ;;
  (define gtk-icon-view-selected-foreach
    (foreign-procedure "gtk_icon_view_selected_foreach"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-set-activate-on-single-click
    (foreign-procedure "gtk_icon_view_set_activate_on_single_click"
		       (iptr int) void))
  ;;
  (define gtk-icon-view-set-column-spacing
    (foreign-procedure "gtk_icon_view_set_column_spacing" (iptr int) void))
  ;;
  (define gtk-icon-view-set-columns
    (foreign-procedure "gtk_icon_view_set_columns" (iptr int) void))
  ;;
  (define gtk-icon-view-set-cursor
    (foreign-procedure "gtk_icon_view_set_cursor" (iptr iptr iptr int) void))
  ;;
  (define gtk-icon-view-set-drag-dest-item
    (foreign-procedure "gtk_icon_view_set_drag_dest_item"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-set-item-orientation
    (foreign-procedure "gtk_icon_view_set_item_orientation" (iptr iptr) void))
  ;;
  (define gtk-icon-view-set-item-padding
    (foreign-procedure "gtk_icon_view_set_item_padding" (iptr int) void))
  ;;
  (define gtk-icon-view-set-item-width
    (foreign-procedure "gtk_icon_view_set_item_width" (iptr int) void))
  ;;
  (define gtk-icon-view-set-margin
    (foreign-procedure "gtk_icon_view_set_margin" (iptr int) void))
  ;;
  (define gtk-icon-view-set-markup-column
    (foreign-procedure "gtk_icon_view_set_markup_column" (iptr int) void))
  ;;
  (define gtk-icon-view-set-model
    (foreign-procedure "gtk_icon_view_set_model" (iptr iptr) void))
  ;;
  (define gtk-icon-view-set-pixbuf-column
    (foreign-procedure "gtk_icon_view_set_pixbuf_column" (iptr int) void))
  ;;
  (define gtk-icon-view-set-reorderable
    (foreign-procedure "gtk_icon_view_set_reorderable" (iptr int) void))
  ;;
  (define gtk-icon-view-set-row-spacing
    (foreign-procedure "gtk_icon_view_set_row_spacing" (iptr int) void))
  ;;
  (define gtk-icon-view-set-selection-mode
    (foreign-procedure "gtk_icon_view_set_selection_mode" (iptr iptr) void))
  ;;
  (define gtk-icon-view-set-spacing
    (foreign-procedure "gtk_icon_view_set_spacing" (iptr int) void))
  ;;
  (define gtk-icon-view-set-text-column
    (foreign-procedure "gtk_icon_view_set_text_column" (iptr int) void))
  ;;
  (define gtk-icon-view-set-tooltip-cell
    (foreign-procedure "gtk_icon_view_set_tooltip_cell"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-set-tooltip-column
    (foreign-procedure "gtk_icon_view_set_tooltip_column" (iptr int) void))
  ;;
  (define gtk-icon-view-set-tooltip-item
    (foreign-procedure "gtk_icon_view_set_tooltip_item" (iptr iptr iptr) void))
  ;;
  (define gtk-icon-view-unselect-all
    (foreign-procedure "gtk_icon_view_unselect_all" (iptr) void))
  ;;
  (define gtk-icon-view-unselect-path
    (foreign-procedure "gtk_icon_view_unselect_path" (iptr iptr) void))
  ;;
  (define gtk-icon-view-unset-model-drag-dest
    (foreign-procedure "gtk_icon_view_unset_model_drag_dest" (iptr) void))
  ;;
  (define gtk-icon-view-unset-model-drag-source
    (foreign-procedure "gtk_icon_view_unset_model_drag_source" (iptr) void))
  ;;
  (define gtk-im-context-delete-surrounding
    (foreign-procedure "gtk_im_context_delete_surrounding" (iptr int int) int))
  ;;
  (define gtk-im-context-filter-key
    (foreign-procedure "gtk_im_context_filter_key"
		       (iptr int iptr iptr int int iptr int) int))
  ;;
  (define gtk-im-context-filter-keypress
    (foreign-procedure "gtk_im_context_filter_keypress" (iptr iptr) int))
  ;;
  (define gtk-im-context-focus-in
    (foreign-procedure "gtk_im_context_focus_in" (iptr) void))
  ;;
  (define gtk-im-context-focus-out
    (foreign-procedure "gtk_im_context_focus_out" (iptr) void))
  ;;
  (define gtk-im-context-get-preedit-string
    (foreign-procedure "gtk_im_context_get_preedit_string"
		       (iptr string iptr int) void))
  ;;
  (define gtk-im-context-get-surrounding-with-selection
    (foreign-procedure "gtk_im_context_get_surrounding_with_selection"
		       (iptr string int int) int))
  ;;
  (define gtk-im-context-reset
    (foreign-procedure "gtk_im_context_reset" () void))
  ;;
  (define gtk-im-context-set-client-widget
    (foreign-procedure "gtk_im_context_set_client_widget" (iptr iptr) void))
  ;;
  (define gtk-im-context-set-cursor-location
    (foreign-procedure "gtk_im_context_set_cursor_location" (iptr iptr) void))
  ;;
  (define gtk-im-context-set-surrounding-with-selection
    (foreign-procedure "gtk_im_context_set_surrounding_with_selection"
		       (iptr string int int int) void))
  ;;
  (define gtk-im-context-set-use-preedit
    (foreign-procedure "gtk_im_context_set_use_preedit" (iptr int) void))
  ;;
  (define gtk-im-context-simple-new
    (foreign-procedure "gtk_im_context_simple_new" () iptr))
  ;;
  (define gtk-im-context-simple-add-compose-file
    (foreign-procedure "gtk_im_context_simple_add_compose_file"
		       (iptr string) void))
  ;;
  (define gtk-im-multicontext-new
    (foreign-procedure "gtk_im_multicontext_new" () iptr))
  ;;
  (define gtk-im-multicontext-get-context-id
    (foreign-procedure "gtk_im_multicontext_get_context_id" (iptr) string))
  ;;
  (define gtk-im-multicontext-set-context-id
    (foreign-procedure "gtk_im_multicontext_set_context_id" (iptr string) void))
  ;;
  (define gtk-info-bar-new
    (foreign-procedure "gtk_info_bar_new" () void))
  ;;
  (define gtk-info-bar-new-with-buttons
    (foreign-procedure "gtk_info_bar_new_with_buttons" (string) iptr))
  ;;
  
  (define gtk-info-bar-add-action-widget
    (foreign-procedure "gtk_info_bar_add_action_widget" (iptr iptr int) void))
  ;;
  (define gtk-info-bar-add-button
    (foreign-procedure "gtk_info_bar_add_button" (iptr string int) iptr))
  ;;
  (define gtk-info-bar-add-buttons
    (foreign-procedure "gtk_info_bar_add_buttons" (iptr string) void))
  ;;
  (define gtk-info-bar-add-child
    (foreign-procedure "gtk_info_bar_add_child" (iptr iptr) void))
  ;;
  (define gtk-info-bar-get-message-type
    (foreign-procedure "gtk_info_bar_get_message_type" (iptr) iptr))
  ;;
  (define gtk-info-bar-get-revealed
    (foreign-procedure "gtk_info_bar_get_revealed" (iptr) int))
  ;;
  (define gtk-info-bar-get-show-close-button
    (foreign-procedure "gtk_info_bar_get_show_close_button" (iptr) int))
  ;;
  (define gtk-info-bar-remove-action-widget
    (foreign-procedure "gtk_info_bar_remove_action_widget" (iptr iptr) void))
  ;;
  (define gtk-info-bar-remove-child
    (foreign-procedure "gtk_info_bar_remove_child" (iptr iptr) void))
  ;;
  (define gtk-info-bar-response
    (foreign-procedure "gtk_info_bar_response" (iptr int) void))
  ;;
  (define gtk-info-bar-set-default-response
    (foreign-procedure "gtk_info_bar_set_default_response" (iptr int) void))
  ;;
  (define gtk-info-bar-set-message-type
    (foreign-procedure "gtk_info_bar_set_message_type" (iptr iptr) void))
  ;;
  (define gtk-info-bar-set-response-sensitive
    (foreign-procedure "gtk_info_bar_set_response_sensitive"
		       (iptr int int) void))
  ;;
  (define gtk-info-bar-set-revealed
    (foreign-procedure "gtk_info_bar_set_revealed" (iptr int) void))
  ;;
  (define gtk-info-bar-set-show-close-button
    (foreign-procedure "gtk_info_bar_set_show_close_button" (iptr int) void))
  ;;
  (define gtk-keyval-trigger-new
    (foreign-procedure "gtk_keyval_trigger_new" (int iptr) iptr))
  ;;
  (define gtk-keyval-trigger-get-keyval
    (foreign-procedure "gtk_keyval_trigger_get_keyval" (iptr) int))
  ;;
  (define gtk-keyval-trigger-get-modifiers
    (foreign-procedure "gtk_keyval_trigger_get_modifiers" (iptr) iptr))
  ;;
  (define gtk-label-new
    (foreign-procedure "gtk_label_new" (string) iptr))
  ;;
  (define gtk-label-new-with-mnemonic
    (foreign-procedure "gtk_label_new_with_mnemonic" (string) iptr))
  ;;
  (define gtk-label-get-attributes
    (foreign-procedure "gtk_label_get_attributes" (iptr) iptr))
  ;;
  (define gtk-label-get-current-uri
    (foreign-procedure "gtk_label_get_current_uri" (iptr) string))
  ;;
  (define gtk-label-get-ellipsize
    (foreign-procedure "gtk_label_get_ellipsize" (iptr) iptr))
  ;;
  (define gtk-label-get-extra-menu
    (foreign-procedure "gtk_label_get_extra_menu" (iptr) iptr))
  ;;
  (define gtk-label-get-justify
    (foreign-procedure "gtk_label_get_justify" (iptr) iptr))
  ;;
  (define gtk-label-get-label
    (foreign-procedure "gtk_label_get_label" (iptr) string))
  ;;
  (define gtk-label-get-layout
    (foreign-procedure "gtk_label_get_layout" (iptr) iptr))
  ;;
  (define gtk-label-get-layout-offsets
    (foreign-procedure "gtk_label_get_layout_offsets" (iptr int int) void))
  ;;
  (define gtk-label-get-lines
    (foreign-procedure "gtk_label_get_lines" (iptr) int))
  ;;
  (define gtk-label-get-max-width-chars
    (foreign-procedure "gtk_label_get_max_width_chars" (iptr) int))
  ;;
  (define gtk-label-get-mnemonic-keyval
    (foreign-procedure "gtk_label_get_mnemonic_keyval" (iptr) int))
  ;;
  (define gtk-label-get-mnemonic-widget
    (foreign-procedure "gtk_label_get_mnemonic_widget" (iptr) iptr))
  ;;
  (define gtk-label-get-selectable
    (foreign-procedure "gtk_label_get_selectable" (iptr) int))
  ;;
  (define gtk-label-get-selection-bounds
    (foreign-procedure "gtk_label_get_selection_bounds" (iptr int int) int))
  ;;
  (define gtk-label-get-single-line-mode
    (foreign-procedure "gtk_label_get_single_line_mode" (iptr) int))
  ;;
  (define gtk-label-get-text
    (foreign-procedure "gtk_label_get_text" (iptr) string))
  ;;
  (define gtk-label-get-use-markup
    (foreign-procedure "gtk_label_get_use_markup" (iptr) int))
  ;;
  (define gtk-label-get-use-underline
    (foreign-procedure "gtk_label_get_use_underline" (iptr) int))
  ;;
  (define gtk-label-get-width-chars
    (foreign-procedure "gtk_label_get_width_chars" (iptr) int))
  ;;
  (define gtk-label-get-wrap
    (foreign-procedure "gtk_label_get_wrap" (iptr) int))
  ;;
  (define gtk-label-get-wrap-mode
    (foreign-procedure "gtk_label_get_wrap_mode" (iptr) iptr))
  ;;
  (define gtk-label-get-xalign
    (foreign-procedure "gtk_label_get_xalign" (iptr) float))
  ;;
  (define gtk-label-get-yalign
    (foreign-procedure "gtk_label_get_yalign" (iptr) float))
  ;;
  (define gtk-label-select-region
    (foreign-procedure "gtk_label_select_region" (iptr int int) void))
  ;;
  (define gtk-label-set-attributes
    (foreign-procedure "gtk_label_set_attributes" (iptr iptr) void))
  ;;
  (define gtk-label-set-ellipsize
    (foreign-procedure "gtk_label_set_ellipsize" (iptr iptr) void))
  ;;
  (define gtk-label-set-extra-menu
    (foreign-procedure "gtk_label_set_extra_menu" (iptr iptr) void))
  ;;
  (define gtk-label-set-justify
    (foreign-procedure "gtk_label_set_justify" (iptr iptr) void))
  ;;
  (define gtk-label-set-label
    (foreign-procedure "gtk_label_set_label" (iptr string) void))
  ;;
  (define gtk-label-set-lines
    (foreign-procedure "gtk_label_set_lines" (iptr int) void))
  ;;
  (define gtk-label-set-markup
    (foreign-procedure "gtk_label_set_markup" (iptr string) void))
  ;;
  (define gtk-label-set-markup-with-mnemonic
    (foreign-procedure "gtk_label_set_markup_with_mnemonic" (iptr string) void))
  ;;
  (define gtk-label-set-max-width-chars
    (foreign-procedure "gtk_label_set_max_width_chars" (iptr int) void))
  ;;
  (define gtk-label-set-mnemonic-widget
    (foreign-procedure "gtk_label_set_mnemonic_widget" (iptr iptr) void))
  ;;
  (define gtk-label-set-selectable
    (foreign-procedure "gtk_label_set_selectable" (iptr int) void))
  ;;
  (define gtk-label-set-single-line-mode
    (foreign-procedure "gtk_label_set_single_line_mode" (iptr int) void))
  ;;
  (define gtk-label-set-text
    (foreign-procedure "gtk_label_set_text" (iptr string) void))
  ;;
  (define gtk-label-set-text-with-mnemonic
    (foreign-procedure "gtk_label_set_text_with_mnemonic" (iptr string) void))
  ;;
  (define gtk-label-set-use-markup
    (foreign-procedure "gtk_label_set_use_markup" (iptr int) void))
  ;;
  (define gtk-label-set-use-underline
    (foreign-procedure "gtk_label_set_use_underline" (iptr int) void))
  ;;
  (define gtk-label-set-width-chars
    (foreign-procedure "gtk_label_set_width_chars" (iptr int) void))
  ;;
  (define gtk-label-set-wrap
    (foreign-procedure "gtk_label_set_wrap" (iptr int) void))
  ;;
  (define gtk-label-set-wrap-mode
    (foreign-procedure "gtk_label_set_wrap_mode" (iptr iptr) void))
  ;;
  (define gtk-label-set-xalign
    (foreign-procedure "gtk_label_set_xalign" (iptr float) void))
  ;;
  (define gtk-label-set-yalign
    (foreign-procedure "gtk_label_set_yalign" (iptr float) void))
  ;;
  (define gtk-layout-child-get-child-widget
    (foreign-procedure "gtk_layout_child_get_child_widget" (iptr) iptr))
  ;;
  (define gtk-layout-child-get-layout-manager
    (foreign-procedure "gtk_layout_child_get_layout_manager" (iptr) iptr))
  ;;
  (define gtk-layout-manager-allocate
    (foreign-procedure "gtk_layout_manager_allocate"
		       (iptr iptr int int int) void))
  ;;
  (define gtk-layout-manager-get-layout-child
    (foreign-procedure "gtk_layout_manager_get_layout_child" (iptr iptr) iptr))
  ;;
  (define gtk-layout-manager-get-request-mode
    (foreign-procedure "gtk_layout_manager_get_request_mode" (iptr) iptr))
  ;;
  (define gtk-layout-manager-get-widget
    (foreign-procedure "gtk_layout_manager_get_widget" (iptr) iptr))
  ;;
  (define gtk-layout-manager-measure
    (foreign-procedure "gtk_layout_manager_measure"
		       (iptr iptr iptr int int int int int) void))
  ;;
  (define gtk-level-bar-new
    (foreign-procedure "gtk_level_bar_new" () iptr))
  ;;
  (define gtk-level-bar-new-for-interval
    (foreign-procedure "gtk_level_bar_new_for_interval" (double double) iptr))
  ;;
  (define gtk-level-bar-add-offset-value
    (foreign-procedure "gtk_level_bar_add_offset_value"
		       (iptr string double) void))
  ;;
  (define gtk-level-bar-get-inverted
    (foreign-procedure "gtk_level_bar_get_inverted" (iptr) int))
  ;;
  (define gtk-level-bar-get-max-value
    (foreign-procedure "gtk_level_bar_get_max_value" (iptr) double))
  ;;
  (define gtk-level-bar-get-min-value
    (foreign-procedure "gtk_level_bar_get_min_value" (iptr) double))
  ;;
  (define gtk-level-bar-get-mode
    (foreign-procedure "gtk_level_bar_get_mode" (iptr) iptr))
  ;;
  (define gtk-level-bar-get-offset-value
    (foreign-procedure "gtk_level_bar_get_offset_value"
		       (iptr string double) int))
  ;;
  (define gtk-level-bar-get-value
    (foreign-procedure "gtk_level_bar_get_value" (iptr) double))
  ;;
  (define gtk-level-bar-remove-offset-value
    (foreign-procedure "gtk_level_bar_remove_offset_value"
		       (iptr string) void))
  ;;
  (define gtk-level-bar-set-inverted
    (foreign-procedure "gtk_level_bar_set_inverted" (iptr int) void))
  ;;
  (define gtk-level-bar-set-max-value
    (foreign-procedure "gtk_level_bar_set_max_value" (iptr double) void))
  ;;
  (define gtk-level-bar-set-min-value
    (foreign-procedure "gtk_level_bar_set_min_value" (iptr double) void))
  ;;
  (define gtk-level-bar-set-mode
    (foreign-procedure "gtk_level_bar_set_mode" (iptr iptr) void))
  ;;
  (define gtk-level-bar-set-value
    (foreign-procedure "gtk_level_bar_set_value" (iptr double) void))
  ;;
  (define gtk-link-button-new
    (foreign-procedure "gtk_link_button_new" (string) iptr))
  ;;
  (define gtk-link-button-new-with-label
    (foreign-procedure "gtk_link_button_new_with_label" (string string) iptr))
  ;;
  (define gtk-link-button-get-uri
    (foreign-procedure "gtk_link_button_get_uri" (iptr) string))
  ;;
  (define gtk-link-button-get-visited
    (foreign-procedure "gtk_link_button_get_visited" (iptr) int))
  ;;
  (define gtk-link-button-set-uri
    (foreign-procedure "gtk_link_button_set_uri" (iptr string) void))
  ;;
  (define gtk-link-button-set-visited
    (foreign-procedure "gtk_link_button_set_visited" (iptr int) void))
  ;;
  (define gtk-list-box-new
    (foreign-procedure "gtk_list_box_new" () iptr))
  ;;
  (define gtk-list-box-append
    (foreign-procedure "gtk_list_box_append" (iptr iptr) void))
  ;;
  (define gtk-list-box-bind-model
    (foreign-procedure "gtk_list_box_bind_model"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-list-box-drag-highlight-row
    (foreign-procedure "gtk_list_box_drag_highlight_row" (iptr iptr) void))
  ;;
  (define gtk-list-box-drag-unhighlight-row
    (foreign-procedure "gtk_list_box_drag_unhighlight_row" (iptr) void))
  ;;
  (define gtk-list-box-get-activate-on-single-click
    (foreign-procedure "gtk_list_box_get_activate_on_single_click" (iptr) int))
  ;;
  (define gtk-list-box-get-adjustment
    (foreign-procedure "gtk_list_box_get_adjustment" (iptr) iptr))
  ;;
  (define gtk-list-box-get-row-at-index
    (foreign-procedure "gtk_list_box_get_row_at_index" (iptr int) iptr))
  ;;
  (define gtk-list-box-get-row-at-y
    (foreign-procedure "gtk_list_box_get_row_at_y" (iptr int) iptr))
  ;;
  (define gtk-list-box-get-selected-row
    (foreign-procedure "gtk_list_box_get_selected_row" (iptr) iptr))
  ;;
  (define gtk-list-box-get-selected-rows
    (foreign-procedure "gtk_list_box_get_selected_rows" (iptr) iptr))
  ;;
  (define gtk-list-box-get-selection-mode
    (foreign-procedure "gtk_list_box_get_selection_mode" (iptr) iptr))
  ;;
  (define gtk-list-box-get-show-separators
    (foreign-procedure "gtk_list_box_get_show_separators" (iptr) int))
  ;;
  (define gtk-list-box-insert
    (foreign-procedure "gtk_list_box_insert" (iptr iptr int) void))
  ;;
  (define gtk-list-box-invalidate-filter
    (foreign-procedure "gtk_list_box_invalidate_filter" (iptr) void))
  ;;
  (define gtk-list-box-invalidate-headers
    (foreign-procedure "gtk_list_box_invalidate_headers" (iptr) void))
  ;;
  (define gtk-list-box-invalidate-sort
    (foreign-procedure "gtk_list_box_invalidate_sort" (iptr) void))
  ;;
  (define gtk-list-box-prepend
    (foreign-procedure "gtk_list_box_prepend" (iptr iptr) void))
  ;;
  (define gtk-list-box-remove
    (foreign-procedure "gtk_list_box_remove" (iptr iptr) void))
  ;;
  (define gtk-list-box-select-all
    (foreign-procedure "gtk_list_box_select_all" (iptr) void))
  ;;
  (define gtk-list-box-select-row
    (foreign-procedure "gtk_list_box_select_row" (iptr iptr) void))
  ;;
  (define gtk-list-box-selected-foreach
    (foreign-procedure "gtk_list_box_selected_foreach" (iptr iptr iptr) void))
  ;;
  (define gtk-list-box-set-activate-on-single-click
    (foreign-procedure "gtk_list_box_set_activate_on_single_click"
		       (iptr int) void))
  ;;
  (define gtk-list-box-set-adjustment
    (foreign-procedure "gtk_list_box_set_adjustment" (iptr iptr) void))
  ;;
  (define gtk-list-box-set-filter-func
    (foreign-procedure "gtk_list_box_set_filter_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-list-box-set-header-func
    (foreign-procedure "gtk_list_box_set_header_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-list-box-set-placeholder
    (foreign-procedure "gtk_list_box_set_placeholder" (iptr iptr) void))
  ;;
  (define gtk-list-box-set-selection-mode
    (foreign-procedure "gtk_list_box_set_selection_mode" (iptr iptr) void))
  ;;
  (define gtk-list-box-set-show-separators
    (foreign-procedure "gtk_list_box_set_show_separators" (iptr int) void))
  ;;
  (define gtk-list-box-set-sort-func
    (foreign-procedure "gtk_list_box_set_sort_func" (iptr iptr iptr iptr) void))
  ;;
  (define gtk-list-box-unselect-all
    (foreign-procedure "gtk_list_box_unselect_all" (iptr) void))
  ;;
  (define gtk-list-box-unselect-row
    (foreign-procedure "gtk_list_box_unselect_row" (iptr iptr) void))
  ;;
  (define gtk-list-box-row-new
    (foreign-procedure "gtk_list_box_row_new" () iptr))
  ;;
  (define gtk-list-box-row-changed
    (foreign-procedure "gtk_list_box_row_changed" (iptr) void))
  ;;
  (define gtk-list-box-row-get-activatable
    (foreign-procedure "gtk_list_box_row_get_activatable" (iptr) int))
  ;;
  (define gtk-list-box-row-get-child
    (foreign-procedure "gtk_list_box_row_get_child" (iptr) iptr))
  ;;
  (define gtk-list-box-row-get-header
    (foreign-procedure "gtk_list_box_row_get_header" (iptr) iptr))
  ;;
  (define gtk-list-box-row-get-index
    (foreign-procedure "gtk_list_box_row_get_index" (iptr) int))
  ;;
  (define gtk-list-box-row-get-selectable
    (foreign-procedure "gtk_list_box_row_get_selectable" (iptr) int))
  ;;
  (define gtk-list-box-row-is-selected
    (foreign-procedure "gtk_list_box_row_is_selected" (iptr) int))
  ;;
  (define gtk-list-box-row-set-activatable
    (foreign-procedure "gtk_list_box_row_set_activatable" (iptr int) void))
  ;;
  (define gtk-list-box-row-set-child
    (foreign-procedure "gtk_list_box_row_set_child" (iptr iptr) void))
  ;;
  (define gtk-list-box-row-set-header
    (foreign-procedure "gtk_list_box_row_set_header" (iptr iptr) void))
  ;;
  (define gtk-list-box-row-set-selectable
    (foreign-procedure "gtk_list_box_row_set_selectable" (iptr int) void))
  ;;
  (define gtk-list-item-get-activatable
    (foreign-procedure "gtk_list_item_get_activatable" (iptr) int))
  ;;
  (define gtk-list-item-get-child
    (foreign-procedure "gtk_list_item_get_child" (iptr) iptr))
  ;;
  (define gtk-list-item-get-item
    (foreign-procedure "gtk_list_item_get_item" (iptr) iptr))
  ;;
  (define gtk-list-item-get-position
    (foreign-procedure "gtk_list_item_get_position" (iptr) int))
  ;;
  (define gtk-list-item-get-selectable
    (foreign-procedure "gtk_list_item_get_selectable" (iptr) int))
  ;;
  (define gtk-list-item-get-selected
    (foreign-procedure "gtk_list_item_get_selected" (iptr) int))
  ;;
  (define gtk-list-item-set-activatable
    (foreign-procedure "gtk_list_item_set_activatable" (iptr int) void))
  ;;
  (define gtk-list-item-set-child
    (foreign-procedure "gtk_list_item_set_child" (iptr iptr) void))
  ;;
  (define gtk-list-item-set-selectable
    (foreign-procedure "gtk_list_item_set_selectable" (iptr int) void))
  ;;
  (define gtk-list-store-new
    (foreign-procedure "gtk_list_store_new" (int) iptr))
  ;;
  (define gtk-list-store-newv
    (foreign-procedure "gtk_list_store_newv" (int iptr) iptr))
  ;;
  (define gtk-list-store-append
    (foreign-procedure "gtk_list_store_append" (iptr iptr) void))
  ;;
  (define gtk-list-store-clear
    (foreign-procedure "gtk_list_store_clear" (iptr) void))
  ;;
  (define gtk-list-store-insert
    (foreign-procedure "gtk_list_store_insert" (iptr iptr int) void))
  ;;
  (define gtk-list-store-insert-after
    (foreign-procedure "gtk_list_store_insert_after" (iptr iptr iptr) void))
  ;;
  (define gtk-list-store-insert-before
    (foreign-procedure "gtk_list_store_insert_before" (iptr iptr iptr) void))
  ;;
  (define gtk-list-store-insert-with-values
    (foreign-procedure "gtk_list_store_insert_with_values"
		       (iptr iptr int) void))
  ;;
  (define gtk-list-store-insert-with-valuesv
    (foreign-procedure "gtk_list_store_insert_with_valuesv"
		       (iptr iptr int int iptr int) void))
  ;;
  (define gtk-list-store-iter-is-valid
    (foreign-procedure "gtk_list_store_iter_is_valid" (iptr iptr) int))
  ;;
  (define gtk-list-store-move-after
    (foreign-procedure "gtk_list_store_move_after" (iptr iptr iptr) void))
  ;;
  (define gtk-list-store-move-before
    (foreign-procedure "gtk_list_store_move_before" (iptr iptr iptr) void))
  ;;
  (define gtk-list-store-prepend
    (foreign-procedure "gtk_list_store_prepend" (iptr iptr) void))
  ;;
  (define gtk-list-store-remove
    (foreign-procedure "gtk_list_store_remove" (iptr iptr) int))
  ;;
  (define gtk-list-store-reorder
    (foreign-procedure "gtk_list_store_reorder" (iptr int) void))
  ;;
  (define gtk-list-store-set
    (foreign-procedure "gtk_list_store_set" (iptr iptr) void))
  ;;
  (define gtk-list-store-set-column-types
    (foreign-procedure "gtk_list_store_set_column_types"
		       (iptr int iptr) void))
  ;;
  (define gtk-list-store-set-valist
    (foreign-procedure "gtk_list_store_set_valist" (iptr iptr iptr) void))
  ;;
  (define gtk-list-store-set-value
    (foreign-procedure "gtk_list_store_set_value" (iptr iptr int iptr) void))
  ;;
  (define gtk-list-store-set-valuesv
    (foreign-procedure "gtk_list_store_set_valuesv"
		       (iptr iptr int iptr int) void))
  ;;
  (define gtk-list-store-swap
    (foreign-procedure "gtk_list_store_swap" (iptr iptr iptr) void))
  ;;
  (define gtk-list-view-new
    (foreign-procedure "gtk_list_view_new" (iptr iptr) iptr))
  ;;
  (define gtk-list-view-get-enable-rubberband
    (foreign-procedure "gtk_list_view_get_enable_rubberband" (iptr) int))
  ;;
  (define gtk-list-view-get-factory
    (foreign-procedure "gtk_list_view_get_factory" (iptr) iptr))
  ;;
  (define gtk-list-view-get-model
    (foreign-procedure "gtk_list_view_get_model" (iptr) iptr))
  ;;
  (define gtk-list-view-get-show-separators
    (foreign-procedure "gtk_list_view_get_show_separators" (iptr) int))
  ;;
  (define gtk-list-view-get-single-click-activate
    (foreign-procedure "gtk_list_view_get_single_click_activate" (iptr) int))
  ;;
  (define gtk-list-view-set-enable-rubberband
    (foreign-procedure "gtk_list_view_set_enable_rubberband" (iptr int) void))
  ;;
  (define gtk-list-view-set-factory
    (foreign-procedure "gtk_list_view_set_factory" (iptr iptr) void))
  ;;
  (define gtk-list-view-set-model
    (foreign-procedure "gtk_list_view_set_model" (iptr iptr) void))
  ;;
  (define gtk-list-view-set-show-separators
    (foreign-procedure "gtk_list_view_set_show_separators" (iptr int) void))
  ;;
  (define gtk-list-view-set-single-click-activate
    (foreign-procedure "gtk_list_view_set_single_click_activate"
		       (iptr int) void))
  ;;
  (define gtk-lock-button-new
    (foreign-procedure "gtk_lock_button_new" (iptr) iptr))
  ;;
  (define gtk-lock-button-get-permission
    (foreign-procedure "gtk_lock_button_get_permission" (iptr) iptr))
  ;;
  (define gtk-lock-button-set-permission
    (foreign-procedure "gtk_lock_button_set_permission" (iptr iptr) void))
  ;;
  (define gtk-map-list-model-new
    (foreign-procedure "gtk_map_list_model_new" (iptr iptr iptr iptr) iptr))
  ;;
  (define gtk-map-list-model-get-model
    (foreign-procedure "gtk_map_list_model_get_model" (iptr) iptr))
  ;;
  (define gtk-map-list-model-has-map
    (foreign-procedure "gtk_map_list_model_has_map" (iptr) int))
  ;;
  (define gtk-map-list-model-set-map-func
    (foreign-procedure "gtk_map_list_model_set_map_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-map-list-model-set-model
    (foreign-procedure "gtk_map_list_model_set_model" (iptr iptr) void))
  ;;
  (define gtk-media-controls-new
    (foreign-procedure "gtk_media_controls_new" (iptr) iptr))
  ;;
  (define gtk-media-controls-get-media-stream
    (foreign-procedure "gtk_media_controls_get_media_stream" (iptr) iptr))
  ;;
  (define gtk-media-controls-set-media-stream
    (foreign-procedure "gtk_media_controls_set_media_stream" (iptr iptr) void))
  ;;
  (define gtk-media-file-new
    (foreign-procedure "gtk_media_file_new" () iptr))
  ;;
  (define gtk-media-file-new-for-file
    (foreign-procedure "gtk_media_file_new_for_file" (iptr) iptr))
  ;;
  (define gtk-media-file-new-for-filename
    (foreign-procedure "gtk_media_file_new_for_filename" (string) iptr))
  ;;
  (define gtk-media-file-new-for-input-stream
    (foreign-procedure "gtk_media_file_new_for_input_stream" (iptr) iptr))
  ;;
  (define gtk-media-file-new-for-resource
    (foreign-procedure "gtk_media_file_new_for_resource" (string) iptr))
  ;;
  (define gtk-media-file-clear
    (foreign-procedure "gtk_media_file_clear" (iptr) void))
  ;;
  (define gtk-media-file-get-file
    (foreign-procedure "gtk_media_file_get_file" (iptr) iptr))
  ;;
  (define gtk-media-file-get-input-stream
    (foreign-procedure "gtk_media_file_get_input_stream" (iptr) iptr))
  ;;
  (define gtk-media-file-set-file
    (foreign-procedure "gtk_media_file_set_file" (iptr iptr) void))
  ;;
  (define gtk-media-file-set-filename
    (foreign-procedure "gtk_media_file_set_filename" (iptr string) void))
  ;;
  (define gtk-media-file-set-input-stream
    (foreign-procedure "gtk_media_file_set_input_stream" (iptr iptr) void))
  ;;
  (define gtk-media-file-set-resource
    (foreign-procedure "gtk_media_file_set_resource" (iptr string) void))
  ;;
  (define gtk-media-stream-error
    (foreign-procedure "gtk_media_stream_error" (iptr iptr int string) void))
  ;;
  (define gtk-media-stream-error-valist
    (foreign-procedure "gtk_media_stream_error_valist"
		       (iptr iptr int string iptr) void))
  ;;
  (define gtk-media-stream-gerror
    (foreign-procedure "gtk_media_stream_gerror" (iptr iptr) void))
  ;;
  (define gtk-media-stream-get-duration
    (foreign-procedure "gtk_media_stream_get_duration" (iptr) int))
  ;;
  (define gtk-media-stream-get-ended
    (foreign-procedure "gtk_media_stream_get_ended" (iptr) int))
  ;;
  (define gtk-media-stream-get-error
    (foreign-procedure "gtk_media_stream_get_error" (iptr) iptr))
  ;;
  (define gtk-media-stream-get-loop
    (foreign-procedure "gtk_media_stream_get_loop" (iptr) int))
  ;;
  (define gtk-media-stream-get-muted
    (foreign-procedure "gtk_media_stream_get_muted" (iptr) int))
  ;;
  (define gtk-media-stream-get-playing
    (foreign-procedure "gtk_media_stream_get_playing" (iptr) int))
  ;;
  (define gtk-media-stream-get-timestamp
    (foreign-procedure "gtk_media_stream_get_timestamp" (iptr) int))
  ;;
  (define gtk-media-stream-get-volume
    (foreign-procedure "gtk_media_stream_get_volume" (iptr) double))
  ;;
  (define gtk-media-stream-has-audio
    (foreign-procedure "gtk_media_stream_has_audio" (iptr) int))
  ;;
  (define gtk-media-stream-has-video
    (foreign-procedure "gtk_media_stream_has_video" (iptr) int))
  ;;
  (define gtk-media-stream-is-prepared
    (foreign-procedure "gtk_media_stream_is_prepared" (iptr) int))
  ;;
  (define gtk-media-stream-is-seekable
    (foreign-procedure "gtk_media_stream_is_seekable" (iptr) int))
  ;;
  (define gtk-media-stream-is-seeking
    (foreign-procedure "gtk_media_stream_is_seeking" (iptr) int))
  ;;
  (define gtk-media-stream-pause
    (foreign-procedure "gtk_media_stream_pause" (iptr) void))
  ;;
  (define gtk-media-stream-play
    (foreign-procedure "gtk_media_stream_play" (iptr) void))
  ;;
  (define gtk-media-stream-realize
    (foreign-procedure "gtk_media_stream_realize" (iptr iptr) void))
  ;;
  (define gtk-media-stream-seek
    (foreign-procedure "gtk_media_stream_seek" (iptr int) void))
  ;;
  (define gtk-media-stream-seek-failed
    (foreign-procedure "gtk_media_stream_seek_failed" (iptr) int))
  ;;
  (define gtk-media-stream-seek-success
    (foreign-procedure "gtk_media_stream_seek_success" (iptr) int))
  ;;
  (define gtk-media-stream-set-loop
    (foreign-procedure "gtk_media_stream_set_loop" (iptr int) void))
  ;;
  (define gtk-media-stream-set-muted
    (foreign-procedure "gtk_media_stream_set_muted" (iptr int) void))
  ;;
  (define gtk-media-stream-set-playing
    (foreign-procedure "gtk_media_stream_set_playing" (iptr int) void))
  ;;
  (define gtk-media-stream-set-volume
    (foreign-procedure "gtk_media_stream_set_volume" (iptr double) void))
  ;;
  (define gtk-media-stream-ended
    (foreign-procedure "gtk_media_stream_ended" (iptr) void))
  ;;
  (define gtk-media-stream-prepared
    (foreign-procedure "gtk_media_stream_prepared" (iptr int int int int) void))
  ;;
  (define gtk-media-stream-unprepared
    (foreign-procedure "gtk_media_stream_unprepared" (iptr) void))
  ;;
  (define gtk-media-stream-unrealize
    (foreign-procedure "gtk_media_stream_unrealize" (iptr iptr) void))
  ;;
  (define gtk-media-stream-update
    (foreign-procedure "gtk_media_stream_update" (iptr int) void))
  ;;
  (define gtk-menu-button-new
    (foreign-procedure "gtk_menu_button_new" () iptr))
  ;;
  (define gtk-menu-button-get-always-show-arrow
    (foreign-procedure "gtk_menu_button_get_always_show_arrow" (iptr) int))
  ;;
  (define gtk-menu-button-get-direction
    (foreign-procedure "gtk_menu_button_get_direction" (iptr) iptr))
  ;;
  (define gtk-menu-button-get-has-frame
    (foreign-procedure "gtk_menu_button_get_has_frame" (iptr) int))
  ;;
  (define gtk-menu-button-get-icon-name
    (foreign-procedure "gtk_menu_button_get_icon_name" (iptr) string))
  ;;
  (define gtk-menu-button-get-label
    (foreign-procedure "gtk_menu_button_get_label" (iptr) string))
  ;;
  (define gtk-menu-button-get-menu-model
    (foreign-procedure "gtk_menu_button_get_menu_model" (iptr) iptr))
  ;;
  (define gtk-menu-button-get-popover
    (foreign-procedure "gtk_menu_button_get_popover" (iptr) iptr))
  ;;
  (define gtk-menu-button-get-primary
    (foreign-procedure "gtk_menu_button_get_primary" (iptr) int))
  ;;
  (define gtk-menu-button-get-use-underline
    (foreign-procedure "gtk_menu_button_get_use_underline" (iptr) int))
  ;;
  (define gtk-menu-button-popdown
    (foreign-procedure "gtk_menu_button_popdown" (iptr) void))
  ;;
  (define gtk-menu-button-popup
    (foreign-procedure "gtk_menu_button_popup" (iptr) void))
  ;;
  (define gtk-menu-button-set-always-show-arrow
    (foreign-procedure "gtk_menu_button_set_always_show_arrow" (iptr int) void))
  ;;
  (define gtk-menu-button-set-create-popup-func
    (foreign-procedure "gtk_menu_button_set_create_popup_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-menu-button-set-direction
    (foreign-procedure "gtk_menu_button_set_direction" (iptr iptr) void))
  ;;
  (define gtk-menu-button-set-has-frame
    (foreign-procedure "gtk_menu_button_set_has_frame" (iptr int) void))
  ;;
  (define gtk-menu-button-set-icon-name
    (foreign-procedure "gtk_menu_button_set_icon_name" (iptr string) void))
  ;;
  (define gtk-menu-button-set-label
    (foreign-procedure "gtk_menu_button_set_label" (iptr string) void))
  ;;
  (define gtk-menu-button-set-menu-model
    (foreign-procedure "gtk_menu_button_set_menu_model" (iptr iptr) void))
  ;;
  (define gtk-menu-button-set-popover
    (foreign-procedure "gtk_menu_button_set_popover" (iptr iptr) void))
  ;;
  (define gtk-menu-button-set-primary
    (foreign-procedure "gtk_menu_button_set_primary" (iptr int) void))
  ;;
  (define gtk-menu-button-set-use-underline
    (foreign-procedure "gtk_menu_button_set_use_underline" (iptr int) void))
  ;;
  (define gtk-message-dialog-new
    (foreign-procedure "gtk_message_dialog_new"
		       (iptr iptr iptr iptr string) iptr))
  ;;
  (define gtk-message-dialog-new-with-markup
    (foreign-procedure "gtk_message_dialog_new_with_markup"
		       (iptr iptr iptr iptr string) iptr))
  ;;
  (define gtk-message-dialog-format-secondary-markup
    (foreign-procedure "gtk_message_dialog_format_secondary_markup"
		       (iptr string) void))
  ;;
  (define gtk-message-dialog-format-secondary-text
    (foreign-procedure "gtk_message_dialog_format_secondary_text"
		       (iptr string) void))
  ;;
  (define gtk-message-dialog-get-message-area
    (foreign-procedure "gtk_message_dialog_get_message_area" (iptr) iptr))
  ;;
  (define gtk-message-dialog-set-markup
    (foreign-procedure "gtk_message_dialog_set_markup" (iptr string) void))
  ;;
  (define gtk-mnemonic-action-get
    (foreign-procedure "gtk_mnemonic_action_get" () iptr))
  ;;
  (define gtk-mnemonic-trigger-new
    (foreign-procedure "gtk_mnemonic_trigger_new" (int) iptr))
  ;;
  (define gtk-mnemonic-trigger-get-keyval
    (foreign-procedure "gtk_mnemonic_trigger_get_keyval" (iptr) int))
  ;;
  (define gtk-mount-operation-new
    (foreign-procedure "gtk_mount_operation_new" (iptr) iptr))
  ;;
  (define gtk-mount-operation-get-display
    (foreign-procedure "gtk_mount_operation_get_display" (iptr) iptr))
  ;;
  (define gtk-mount-operation-get-parent
    (foreign-procedure "gtk_mount_operation_get_parent" (iptr) iptr))
  ;;
  (define gtk-mount-operation-is-showing
    (foreign-procedure "gtk_mount_operation_is_showing" (iptr) int))
  ;;
  (define gtk-mount-operation-set-display
    (foreign-procedure "gtk_mount_operation_set_display" (iptr iptr) void))
  ;;
  (define gtk-mount-operation-set-parent
    (foreign-procedure "gtk_mount_operation_set_parent" (iptr iptr) void))
  ;;
  (define gtk-multi-filter-append
    (foreign-procedure "gtk_multi_filter_append" (iptr iptr) void))
  ;;
  (define gtk-multi-filter-remove
    (foreign-procedure "gtk_multi_filter_remove" (iptr int) void))
  ;;
  (define gtk-multi-selection-new
    (foreign-procedure "gtk_multi_selection_new" (iptr) iptr))
  ;;
  (define gtk-multi-selection-get-model
    (foreign-procedure "gtk_multi_selection_get_model" (iptr) iptr))
  ;;
  (define gtk-multi-selection-set-model
    (foreign-procedure "gtk_multi_selection_set_model" (iptr iptr) void))
  ;;
  (define gtk-multi-sorter-new
    (foreign-procedure "gtk_multi_sorter_new" () iptr))
  ;;
  (define gtk-multi-sorter-append
    (foreign-procedure "gtk_multi_sorter_append" (iptr iptr) void))
  ;;
  (define gtk-multi-sorter-remove
    (foreign-procedure "gtk_multi_sorter_remove" (iptr int) void))
  ;;
  (define gtk-named-action-new
    (foreign-procedure "gtk_named_action_new" (string) iptr))
  ;;
  (define gtk-named-action-get-action-name
    (foreign-procedure "gtk_named_action_get_action_name" (iptr) string))
  ;;
  (define gtk-native-dialog-destroy
    (foreign-procedure "gtk_native_dialog_destroy" (iptr) void))
  ;;
  (define gtk-native-dialog-get-modal
    (foreign-procedure "gtk_native_dialog_get_modal" (iptr) int))
  ;;
  (define gtk-native-dialog-get-title
    (foreign-procedure "gtk_native_dialog_get_title" (iptr) string))
  ;;
  (define gtk-native-dialog-get-transient-for
    (foreign-procedure "gtk_native_dialog_get_transient_for" (iptr) iptr))
  ;;
  (define gtk-native-dialog-get-visible
    (foreign-procedure "gtk_native_dialog_get_visible" (iptr) int))
  ;;
  (define gtk-native-dialog-hide
    (foreign-procedure "gtk_native_dialog_hide" (iptr) void))
  ;;
  (define gtk-native-dialog-set-modal
    (foreign-procedure "gtk_native_dialog_set_modal" (iptr int) void))
  ;;
  (define gtk-native-dialog-set-title
    (foreign-procedure "gtk_native_dialog_set_title" (iptr string) void))
  ;;
  (define gtk-native-dialog-set-transient-for
    (foreign-procedure "gtk_native_dialog_set_transient_for" (iptr iptr) void))
  ;;
  (define gtk-native-dialog-show
    (foreign-procedure "gtk_native_dialog_show" (iptr) void))
  ;;
  (define gtk-never-trigger-get
    (foreign-procedure "gtk_never_trigger_get" (iptr) void))
  ;;
  (define gtk-no-selection-new
    (foreign-procedure "gtk_no_selection_new" (iptr) iptr))
  ;;
  (define gtk-no-selection-get-model
    (foreign-procedure "gtk_no_selection_get_model" (iptr) iptr))
  ;;
  (define gtk-no-selection-set-model
    (foreign-procedure "gtk_no_selection_set_model" (iptr iptr) void))
  ;;
  (define gtk-notebook-new
    (foreign-procedure "gtk_notebook_new" () iptr))
  ;;
  (define gtk-notebook-append-page
    (foreign-procedure "gtk_notebook_append_page" (iptr iptr iptr) int))
  ;;
  (define gtk-notebook-append-page-menu
    (foreign-procedure "gtk_notebook_append_page_menu"
		       (iptr iptr iptr iptr) int))
  ;;
  (define gtk-notebook-detach-tab
    (foreign-procedure "gtk_notebook_detach_tab" (iptr iptr) void))
  ;;
  (define gtk-notebook-get-action-widget
    (foreign-procedure "gtk_notebook_get_action_widget" (iptr iptr) iptr))
  ;;
  (define gtk-notebook-get-current-page
    (foreign-procedure "gtk_notebook_get_current_page" (iptr) int))
  ;;
  (define gtk-notebook-get-group-name
    (foreign-procedure "gtk_notebook_get_group_name" (iptr) string))
  ;;
  (define gtk-notebook-get-menu-label
    (foreign-procedure "gtk_notebook_get_menu_label" (iptr iptr) iptr))
  ;;
  (define gtk-notebook-get-menu-label-text
    (foreign-procedure "gtk_notebook_get_menu_label_text" (iptr iptr) string))
  ;;
  (define gtk-notebook-get-n-pages
    (foreign-procedure "gtk_notebook_get_n_pages" (iptr) int))
  ;;
  (define gtk-notebook-get-nth-page
    (foreign-procedure "gtk_notebook_get_nth_page" (iptr int) iptr))
  ;;
  (define gtk-notebook-get-page
    (foreign-procedure "gtk_notebook_get_page" (iptr iptr) iptr))
  ;;
  (define gtk-notebook-get-pages
    (foreign-procedure "gtk_notebook_get_pages" (iptr) iptr))
  ;;
  (define gtk-notebook-get-scrollable
    (foreign-procedure "gtk_notebook_get_scrollable" (iptr) int))
  ;;
  (define gtk-notebook-get-show-border
    (foreign-procedure "gtk_notebook_get_show_border" (iptr) int))
  ;;
  (define gtk-notebook-get-show-tabs
    (foreign-procedure "gtk_notebook_get_show_tabs" (iptr) int))
  ;;
  (define gtk-notebook-get-tab-detachable
    (foreign-procedure "gtk_notebook_get_tab_detachable" (iptr iptr) int))
  ;;
  (define gtk-notebook-get-tab-label
    (foreign-procedure "gtk_notebook_get_tab_label" (iptr iptr) iptr))
  ;;
  (define gtk-notebook-get-tab-label-text
    (foreign-procedure "gtk_notebook_get_tab_label_text" (iptr iptr) string))
  ;;
  (define gtk-notebook-get-tab-pos
    (foreign-procedure "gtk_notebook_get_tab_pos" (iptr) iptr))
  ;;
  (define gtk-notebook-get-tab-reorderable
    (foreign-procedure "gtk_notebook_get_tab_reorderable" (iptr iptr) int))
  ;;
  (define gtk-notebook-insert-page
    (foreign-procedure "gtk_notebook_insert_page" (iptr iptr iptr int) int))
  ;;
  (define gtk-notebook-insert-page-menu
    (foreign-procedure "gtk_notebook_insert_page_menu"
		       (iptr iptr iptr iptr int) int))
  ;;
  (define gtk-notebook-next-page
    (foreign-procedure "gtk_notebook_next_page" (iptr) void))
  ;;
  (define gtk-notebook-page-num
    (foreign-procedure "gtk_notebook_page_num" (iptr iptr) int))
  ;;
  (define gtk-notebook-popup-disable
    (foreign-procedure "gtk_notebook_popup_disable" (iptr) void))
  ;;
  (define gtk-notebook-popup-enable
    (foreign-procedure "gtk_notebook_popup_enable" (iptr) void))
  ;;
  (define gtk-notebook-prepend-page
    (foreign-procedure "gtk_notebook_prepend_page" (iptr iptr iptr) int))
  ;;
  (define gtk-notebook-prepend-page-menu
    (foreign-procedure "gtk_notebook_prepend_page_menu"
		       (iptr iptr iptr iptr) int))
  ;;
  (define gtk-notebook-prev-page
    (foreign-procedure "gtk_notebook_prev_page" (iptr) void))
  ;;
  (define gtk-notebook-remove-page
    (foreign-procedure "gtk_notebook_remove_page" (iptr int) void))
  ;;
  (define gtk-notebook-reorder-child
    (foreign-procedure "gtk_notebook_reorder_child" (iptr iptr int) void))
  ;;
  (define gtk-notebook-set-action-widget
    (foreign-procedure "gtk_notebook_set_action_widget" (iptr iptr iptr) void))
  ;;
  (define gtk-notebook-set-current-page
    (foreign-procedure "gtk_notebook_set_current_page" (iptr int) void))
  ;;
  (define gtk-notebook-set-group-name
    (foreign-procedure "gtk_notebook_set_group_name" (iptr string) void))
  ;;
  (define gtk-notebook-set-menu-label
    (foreign-procedure "gtk_notebook_set_menu_label" (iptr iptr iptr) void))
  ;;
  (define gtk-notebook-set-menu-label-text
    (foreign-procedure "gtk_notebook_set_menu_label_text"
		       (iptr iptr string) void))
  ;;
  (define gtk-notebook-set-scrollable
    (foreign-procedure "gtk_notebook_set_scrollable" (iptr int) void))
  ;;
  (define gtk-notebook-set-show-border
    (foreign-procedure "gtk_notebook_set_show_border" (iptr int) void))
  ;;
  (define gtk-notebook-set-show-tabs
    (foreign-procedure "gtk_notebook_set_show_tabs" (iptr int) void))
  ;;
  (define gtk-notebook-set-tab-detachable
    (foreign-procedure "gtk_notebook_set_tab_detachable" (iptr iptr int) void))
  ;;
  (define gtk-notebook-set-tab-label
    (foreign-procedure "gtk_notebook_set_tab_label" (iptr iptr iptr) void))
  ;;
  (define gtk-notebook-set-tab-label-text
    (foreign-procedure "gtk_notebook_set_tab_label_text" (iptr iptr string) void))
  ;;
  (define gtk-notebook-set-tab-pos
    (foreign-procedure "gtk_notebook_set_tab_pos" (iptr iptr) void))
  ;;
  (define gtk-notebook-set-tab-reorderable
    (foreign-procedure "gtk_notebook_set_tab_reorderable" (iptr iptr int) void))
  ;;
  (define gtk-notebook-page-get-child
    (foreign-procedure "gtk_notebook_page_get_child" (iptr) iptr))
  ;;
  (define gtk-nothing-action-get
    (foreign-procedure "gtk_nothing_action_get" () iptr))
  ;;
  (define gtk-numeric-sorter-new
    (foreign-procedure "gtk_numeric_sorter_new" (iptr) iptr))
  ;;
  (define gtk-numeric-sorter-get-expression
    (foreign-procedure "gtk_numeric_sorter_get_expression" (iptr) iptr))
  ;;
  (define gtk-numeric-sorter-get-sort-order
    (foreign-procedure "gtk_numeric_sorter_get_sort_order" (iptr) iptr))
  ;;
  (define gtk-numeric-sorter-set-expression
    (foreign-procedure "gtk_numeric_sorter_set_expression" (iptr iptr) void))
  ;;
  (define gtk-numeric-sorter-set-sort-order
    (foreign-procedure "gtk_numeric_sorter_set_sort_order" (iptr iptr) void))
  ;;
  (define gtk-object-expression-new
    (foreign-procedure "gtk_object_expression_new" (iptr) iptr))
  ;;
  (define gtk-object-expression-get-object
    (foreign-procedure "gtk_object_expression_get_object" (iptr) iptr))
  ;;
  (define gtk-overlay-new
    (foreign-procedure "gtk_overlay_new" () iptr))
  ;;
  (define gtk-overlay-add-overlay
    (foreign-procedure "gtk_overlay_add_overlay" (iptr iptr) void))
  ;;
  (define gtk-overlay-get-child
    (foreign-procedure "gtk_overlay_get_child" (iptr) iptr))
  ;;
  (define gtk-overlay-get-clip-overlay
    (foreign-procedure "gtk_overlay_get_clip_overlay" (iptr iptr) int))
  ;;
  (define gtk-overlay-get-measure-overlay
    (foreign-procedure "gtk_overlay_get_measure_overlay" (iptr iptr) int))
  ;;
  (define gtk-overlay-remove-overlay
    (foreign-procedure "gtk_overlay_remove_overlay" (iptr iptr) void))
  ;;
  (define gtk-overlay-set-child
    (foreign-procedure "gtk_overlay_set_child" (iptr iptr) void))
  ;;
  (define gtk-overlay-set-clip-overlay
    (foreign-procedure "gtk_overlay_set_clip_overlay" (iptr iptr int) void))
  ;;
  (define gtk-overlay-set-measure-overlay
    (foreign-procedure "gtk_overlay_set_measure_overlay" (iptr iptr int) void))
  ;;
  (define gtk-overlay-layout-new
    (foreign-procedure "gtk_overlay_layout_new" () iptr))
  ;;
  (define gtk-overlay-layout-child-get-clip-overlay
    (foreign-procedure "gtk_overlay_layout_child_get_clip_overlay" (iptr) int))
  ;;
  (define gtk-overlay-layout-child-get-measure
    (foreign-procedure "gtk_overlay_layout_child_get_measure" (iptr) int))
  ;;
  (define gtk-overlay-layout-child-set-clip-overlay
    (foreign-procedure "gtk_overlay_layout_child_set_clip_overlay" (iptr) int))
  ;;
  (define gtk-overlay-layout-child-set-measure
    (foreign-procedure "gtk_overlay_layout_child_set_measure" (iptr) int))
  ;;
  (define gtk-pad-controller-new
    (foreign-procedure "gtk_pad_controller_new" (iptr iptr) iptr))
  ;;
  (define gtk-pad-controller-set-action
    (foreign-procedure "gtk_pad_controller_set_action"
		       (iptr iptr int int string string) iptr))
  ;;
  (define gtk-pad-controller-set-action-entries
    (foreign-procedure "gtk_pad_controller_set_action_entries"
		       (iptr iptr int) void))
  ;;
  (define gtk-page-setup-new
    (foreign-procedure "gtk_page_setup_new" () iptr))
  ;;
  (define gtk-page-setup-new-from-file
    (foreign-procedure "gtk_page_setup_new_from_file" (string iptr) iptr))
  ;;
  (define gtk-page-setup-new-from-gvariant
    (foreign-procedure "gtk_page_setup_new_from_gvariant" (iptr) iptr))
  ;;
  (define gtk-page-setup-new-from-key-file
    (foreign-procedure "gtk_page_setup_new_from_key_file"
		       (iptr string iptr) iptr))
  ;;
  (define gtk-page-setup-copy
    (foreign-procedure "gtk_page_setup_copy" (iptr) iptr))
  ;;
  (define gtk-page-setup-get-bottom-margin
    (foreign-procedure "gtk_page_setup_get_bottom_margin" (iptr int) double))
  ;;
  (define gtk-page-setup-get-left-margin
    (foreign-procedure "gtk_page_setup_get_left_margin" (iptr int) double))
  ;;
  (define gtk-page-setup-get-orientation
    (foreign-procedure "gtk_page_setup_get_orientation" (iptr) iptr))
  ;;
  (define gtk-page-setup-get-page-height
    (foreign-procedure "gtk_page_setup_get_page_height" (iptr int) double))
  ;;
  (define gtk-page-setup-get-page-width
    (foreign-procedure "gtk_page_setup_get_page_width" (iptr int) double))
  ;;
  (define gtk-page-setup-get-paper-height
    (foreign-procedure "gtk_page_setup_get_paper_height" (iptr int) double))
  ;;
  (define gtk-page-setup-get-paper-size
    (foreign-procedure "gtk_page_setup_get_paper_size" (iptr) iptr))
  ;;
  (define gtk-page-setup-get-paper-width
    (foreign-procedure "gtk_page_setup_get_paper_width" (iptr int) double))
  ;;
  (define gtk-page-setup-get-right-margin
    (foreign-procedure "gtk_page_setup_get_right_margin" (iptr int) double))
  ;;
  (define gtk-page-setup-get-top-margin
    (foreign-procedure "gtk_page_setup_get_top_margin" (iptr int) double))
  ;;
  (define gtk-page-setup-load-file
    (foreign-procedure "gtk_page_setup_load_file" (iptr string iptr) int))
  ;;
  (define gtk-page-setup-load-key-file
    (foreign-procedure "gtk_page_setup_load_key_file"
		       (iptr iptr string iptr) int))
  ;;
  (define gtk-page-setup-set-bottom-margin
    (foreign-procedure "gtk_page_setup_set_bottom_margin"
		       (iptr double int) void))
  ;;
  (define gtk-page-setup-set-left-margin
    (foreign-procedure "gtk_page_setup_set_left_margin" (iptr double int) void))
  ;;
  (define gtk-page-setup-set-orientation
    (foreign-procedure "gtk_page_setup_set_orientation" (iptr iptr) void))
  ;;
  (define gtk-page-setup-set-paper-size
    (foreign-procedure "gtk_page_setup_set_paper_size" (iptr iptr) void))
  ;;
  (define gtk-page-setup-set-paper-size-and-default-margins
    (foreign-procedure "gtk_page_setup_set_paper_size_and_default_margins"
		       (iptr iptr) void))
  ;;
  (define gtk-page-setup-set-right-margin
    (foreign-procedure "gtk_page_setup_set_right_margin"
		       (iptr double int) void))
  ;;
  (define gtk-page-setup-set-top-margin
    (foreign-procedure "gtk_page_setup_set_top_margin" (iptr double int) void))
  ;;
  (define gtk-page-setup-to-file
    (foreign-procedure "gtk_page_setup_to_file" (iptr string iptr) int))
  ;;
  (define gtk-page-setup-to-gvariant
    (foreign-procedure "gtk_page_setup_to_gvariant" (iptr) iptr))
  ;;
  (define gtk-page-setup-to-key-file
    (foreign-procedure "gtk_page_setup_to_key_file" (iptr iptr string) void))
  ;;
  (define gtk-page-setup-unix-dialog-new
    (foreign-procedure "gtk_page_setup_unix_dialog_new" (string iptr) iptr))
  ;;
  (define gtk-page-setup-unix-dialog-get-page-setup
    (foreign-procedure "gtk_page_setup_unix_dialog_get_page_setup" (iptr) iptr))
  ;;
  (define gtk-page-setup-unix-dialog-get-print-settings
    (foreign-procedure "gtk_page_setup_unix_dialog_get_print_settings"
		       (iptr) iptr))
  ;;
  (define gtk-page-setup-unix-dialog-set-page-setup
    (foreign-procedure "gtk_page_setup_unix_dialog_set_page_setup"
		       (iptr iptr) void))
  ;;
  (define gtk-page-setup-unix-dialog-set-print-settings
    (foreign-procedure "gtk_page_setup_unix_dialog_set_print_settings"
		       (iptr iptr) void))
  ;;
  (define gtk-paned-new
    (foreign-procedure "gtk_paned_new" (iptr) iptr))
  ;;
  (define gtk-paned-get-end-child
    (foreign-procedure "gtk_paned_get_end_child" (iptr) iptr))
  ;;
  (define gtk-paned-get-position
    (foreign-procedure "gtk_paned_get_position" (iptr) int))
  ;;
  (define gtk-paned-get-resize-end-child
    (foreign-procedure "gtk_paned_get_resize_end_child" (iptr) int))
  ;;
  (define gtk-paned-get-resize-start-child
    (foreign-procedure "gtk_paned_get_resize_start_child" (iptr) int))
  ;;
  (define gtk-paned-get-shrink-end-child
    (foreign-procedure "gtk_paned_get_shrink_end_child" (iptr) int))
  ;;
  (define gtk-paned-get-shrink-start-child
    (foreign-procedure "gtk_paned_get_shrink_start_child" (iptr) int))
  ;;
  (define gtk-paned-get-start-child
    (foreign-procedure "gtk_paned_get_start_child" (iptr) iptr))
  ;;
  (define gtk-paned-get-wide-handle
    (foreign-procedure "gtk_paned_get_wide_handle" (iptr) int))
  ;;
  (define gtk-paned-set-end-child
    (foreign-procedure "gtk_paned_set_end_child" (iptr iptr) void))
  ;;
  (define gtk-paned-set-position
    (foreign-procedure "gtk_paned_set_position" (iptr int) void))
  ;;
  (define gtk-paned-set-resize-end-child
    (foreign-procedure "gtk_paned_set_resize_end_child" (iptr int) void))
  ;;
  (define gtk-paned-set-resize-start-child
    (foreign-procedure "gtk_paned_set_resize_start_child" (iptr int) void))
  ;;
  (define gtk-paned-set-shrink-end-child
    (foreign-procedure "gtk_paned_set_shrink_end_child" (iptr int) void))
  ;;
  (define gtk-paned-set-shrink-start-child
    (foreign-procedure "gtk_paned_set_shrink_start_child" (iptr int) void))
  ;;
  (define gtk-paned-set-start-child
    (foreign-procedure "gtk_paned_set_start_child" (iptr iptr) void))
  ;;
  (define gtk-paned-set-wide-handle
    (foreign-procedure "gtk_paned_set_wide_handle" (iptr int) void))
  ;;
  (define gtk-password-entry-new
    (foreign-procedure "gtk_password_entry_new" () iptr))
  ;;
  (define gtk-password-entry-get-extra-menu
    (foreign-procedure "gtk_password_entry_get_extra_menu" (iptr) iptr))
  ;;
  (define gtk-password-entry-get-show-peek-icon
    (foreign-procedure "gtk_password_entry_get_show_peek_icon" (iptr) int))
  ;;
  (define gtk-password-entry-set-extra-menu
    (foreign-procedure "gtk_password_entry_set_extra_menu" (iptr iptr) void))
  ;;
  (define gtk-password-entry-set-show-peek-icon
    (foreign-procedure "gtk_password_entry_set_show_peek_icon" (iptr int) void))
  ;;
  (define gtk-password-entry-buffer-new
    (foreign-procedure "gtk_password_entry_buffer_new" () iptr))
  ;;
  (define gtk-picture-new
    (foreign-procedure "gtk_picture_new" () iptr))
  ;;
  (define gtk-picture-new-for-file
    (foreign-procedure "gtk_picture_new_for_file" (iptr) iptr))
  ;;
  (define gtk-picture-new-for-filename
    (foreign-procedure "gtk_picture_new_for_filename" (string) iptr))
  ;;
  (define gtk-picture-new-for-paintable
    (foreign-procedure "gtk_picture_new_for_paintable" (iptr) iptr))
  ;;
  (define gtk-picture-new-for-pixbuf
    (foreign-procedure "gtk_picture_new_for_pixbuf" (iptr) iptr))
  ;;
  (define gtk-picture-new-for-resource
    (foreign-procedure "gtk_picture_new_for_resource" (string) iptr))
  ;;
  (define gtk-picture-get-alternative-text
    (foreign-procedure "gtk_picture_get_alternative_text" (iptr) string))
  ;;
  (define gtk-picture-get-can-shrink
    (foreign-procedure "gtk_picture_get_can_shrink" (iptr) int))
  ;;
  (define gtk-picture-get-file
    (foreign-procedure "gtk_picture_get_file" (iptr) iptr))
  ;;
  (define gtk-picture-get-keep-aspect-ratio
    (foreign-procedure "gtk_picture_get_keep_aspect_ratio" (iptr) int))
  ;;
  (define gtk-picture-get-paintable
    (foreign-procedure "gtk_picture_get_paintable" (iptr) iptr))
  ;;
  (define gtk-picture-set-alternative-text
    (foreign-procedure "gtk_picture_set_alternative_text" (iptr string) void))
  ;;
  (define gtk-picture-set-can-shrink
    (foreign-procedure "gtk_picture_set_can_shrink" (iptr int) void))
  ;;
  (define gtk-picture-set-file
    (foreign-procedure "gtk_picture_set_file" (iptr iptr) void))
  ;;
  (define gtk-picture-set-filename
    (foreign-procedure "gtk_picture_set_filename" (iptr string) void))
  ;;
  (define gtk-picture-set-keep-aspect-ratio
    (foreign-procedure "gtk_picture_set_keep_aspect_ratio" (iptr int) void))
  ;;
  (define gtk-picture-set-paintable
    (foreign-procedure "gtk_picture_set_paintable" (iptr iptr) void))
  ;;
  (define gtk-picture-set-pixbuf
    (foreign-procedure "gtk_picture_set_pixbuf" (iptr iptr) void))
  ;;
  (define gtk-picture-set-resource
    (foreign-procedure "gtk_picture_set_resource" (iptr string) void))
  ;;
  (define gtk-popover-new
    (foreign-procedure "gtk_popover_new" () iptr))
  ;;
  (define gtk-popover-get-autohide
    (foreign-procedure "gtk_popover_get_autohide" (iptr) int))
  ;;
  (define gtk-popover-get-cascade-popdown
    (foreign-procedure "gtk_popover_get_cascade_popdown" (iptr) int))
  ;;
  (define gtk-popover-get-child
    (foreign-procedure "gtk_popover_get_child" (iptr) iptr))
  ;;
  (define gtk-popover-get-has-arrow
    (foreign-procedure "gtk_popover_get_has_arrow" (iptr) int))
  ;;
  (define gtk-popover-get-mnemonics-visible
    (foreign-procedure "gtk_popover_get_mnemonics_visible" (iptr) int))
  ;;
  (define gtk-popover-get-offset
    (foreign-procedure "gtk_popover_get_offset" (iptr int int) void))
  ;;
  (define gtk-popover-get-pointing-to
    (foreign-procedure "gtk_popover_get_pointing_to" (iptr iptr) int))
  ;;
  (define gtk-popover-get-position
    (foreign-procedure "gtk_popover_get_position" (iptr) iptr))
  ;;
  (define gtk-popover-popdown
    (foreign-procedure "gtk_popover_popdown" (iptr) void))
  ;;
  (define gtk-popover-popup
    (foreign-procedure "gtk_popover_popup" (iptr) void))
  ;;
  (define gtk-popover-present
    (foreign-procedure "gtk_popover_present" (iptr) void))
  ;;
  (define gtk-popover-set-autohide
    (foreign-procedure "gtk_popover_set_autohide" (iptr int) void))
  ;;
  (define gtk-popover-set-cascade-popdown
    (foreign-procedure "gtk_popover_set_cascade_popdown" (iptr int) void))
  ;;
  (define gtk-popover-set-child
    (foreign-procedure "gtk_popover_set_child" (iptr iptr) void))
  ;;
  (define gtk-popover-set-default-widget
    (foreign-procedure "gtk_popover_set_default_widget" (iptr iptr) void))
  ;;
  (define gtk-popover-set-has-arrow
    (foreign-procedure "gtk_popover_set_has_arrow" (iptr int) void))
  ;;
  (define gtk-popover-set-mnemonics-visible
    (foreign-procedure "gtk_popover_set_mnemonics_visible" (iptr int) void))
  ;;
  (define gtk-popover-set-offset
    (foreign-procedure "gtk_popover_set_offset" (iptr int int) void))
  ;;
  (define gtk-popover-set-pointing-to
    (foreign-procedure "gtk_popover_set_pointing_to" (iptr iptr) void))
  ;;
  (define gtk-popover-set-position
    (foreign-procedure "gtk_popover_set_position" (iptr iptr) void))
  ;;
  (define gtk-popover-menu-new-from-model
    (foreign-procedure "gtk_popover_menu_new_from_model" (iptr) iptr))
  ;;
  (define gtk-popover-menu-new-from-model-full
    (foreign-procedure "gtk_popover_menu_new_from_model_full" (iptr iptr) iptr))
  ;;
  (define gtk-popover-menu-add-child
    (foreign-procedure "gtk_popover_menu_add_child" (iptr iptr string) int))
  ;;
  (define gtk-popover-menu-get-menu-model
    (foreign-procedure "gtk_popover_menu_get_menu_model" (iptr) iptr))
  ;;
  (define gtk-popover-menu-remove-child
    (foreign-procedure "gtk_popover_menu_remove_child" (iptr iptr) int))
  ;;
  (define gtk-popover-menu-set-menu-model
    (foreign-procedure "gtk_popover_menu_set_menu_model" (iptr iptr) void))
  ;;
  (define gtk-popover-menu-bar-new-from-model
    (foreign-procedure "gtk_popover_menu_bar_new_from_model" (iptr) iptr))
  ;;
  (define gtk-popover-menu-bar-add-child
    (foreign-procedure "gtk_popover_menu_bar_add_child" (iptr iptr string) int))
  ;;
  (define gtk-popover-menu-bar-get-menu-model
    (foreign-procedure "gtk_popover_menu_bar_get_menu_model" (iptr) iptr))
  ;;
  (define gtk-popover-menu-bar-remove-child
    (foreign-procedure "gtk_popover_menu_bar_remove_child" (iptr iptr) int))
  ;;
  (define gtk-popover-menu-bar-set-menu-model
    (foreign-procedure "gtk_popover_menu_bar_set_menu_model" (iptr iptr) void))
  ;;
  (define gtk-print-context-create-pango-context
    (foreign-procedure "gtk_print_context_create_pango_context" (iptr) iptr))
  ;;
  (define gtk-print-context-create-pango-layout
    (foreign-procedure "gtk_print_context_create_pango_layout" (iptr) iptr))
  ;;
  (define gtk-print-context-get-cairo-context
    (foreign-procedure "gtk_print_context_get_cairo_context" (iptr) iptr))
  ;;
  (define gtk-print-context-get-dpi-x
    (foreign-procedure "gtk_print_context_get_dpi_x" (iptr) double))
  ;;
  (define gtk-print-context-get-dpi-y
    (foreign-procedure "gtk_print_context_get_dpi_y" (iptr) double))
  ;;
  (define gtk-print-context-get-hard-margins
    (foreign-procedure "gtk_print_context_get_hard_margins"
		       (iptr double double double double) int))
  ;;
  (define gtk-print-context-get-height
    (foreign-procedure "gtk_print_context_get_height" (iptr) double))
  ;;
  (define gtk-print-context-get-page-setup
    (foreign-procedure "gtk_print_context_get_page_setup" (iptr) iptr))
  ;;
  (define gtk-print-context-get-pango-fontmap
    (foreign-procedure "gtk_print_context_get_pango_fontmap" (iptr) iptr))
  ;;
  (define gtk-print-context-get-width
    (foreign-procedure "gtk_print_context_get_width" (iptr) double))
  ;;
  (define gtk-print-context-set-cairo-context
    (foreign-procedure "gtk_print_context_set_cairo_context"
		       (iptr iptr double double) void))
  ;;
  (define gtk-printer-new
    (foreign-procedure "gtk_printer_new" (string iptr int) iptr))
  ;;
  (define gtk-printer-accepts-pdf
    (foreign-procedure "gtk_printer_accepts_pdf" (iptr) int))
  ;;
  (define gtk-printer-accepts-ps
    (foreign-procedure "gtk_printer_accepts_ps" (iptr) int))
  ;;
  (define gtk-printer-compare
    (foreign-procedure "gtk_printer_compare" (iptr iptr) int))
  ;;
  (define gtk-printer-get-backend
    (foreign-procedure "gtk_printer_get_backend" (iptr) iptr))
  ;;
  (define gtk-printer-get-capabilities
    (foreign-procedure "gtk_printer_get_capabilities" (iptr) iptr))
  ;;
  (define gtk-printer-get-default-page-size
    (foreign-procedure "gtk_printer_get_default_page_size" (iptr) iptr))
  ;;
  (define gtk-printer-get-description
    (foreign-procedure "gtk_printer_get_description" (iptr) string))
  ;;
  (define gtk-printer-get-hard-margins
    (foreign-procedure "gtk_printer_get_hard_margins"
		       (iptr double double double double) int))
  ;;
  (define gtk-printer-get-hard-margins-for-paper-size
    (foreign-procedure "gtk_printer_get_hard_margins_for_paper_size"
		       (iptr iptr double double double double) int))
  ;;
  (define gtk-printer-get-icon-name
    (foreign-procedure "gtk_printer_get_icon_name" (iptr) string))
  ;;
  (define gtk-printer-get-job-count
    (foreign-procedure "gtk_printer_get_job_count" (iptr) int))
  ;;
  (define gtk-printer-get-location
    (foreign-procedure "gtk_printer_get_location" (iptr) string))
  ;;
  (define gtk-printer-get-name
    (foreign-procedure "gtk_printer_get_name" (iptr) string))
  ;;
  (define gtk-printer-get-state-message
    (foreign-procedure "gtk_printer_get_state_message" (iptr) string))
  ;;
  (define gtk-printer-has-details
    (foreign-procedure "gtk_printer_has_details" (iptr) int))
  ;;
  (define gtk-printer-is-accepting-jobs
    (foreign-procedure "gtk_printer_is_accepting_jobs" (iptr) int))
  ;;
  (define gtk-printer-is-active
    (foreign-procedure "gtk_printer_is_active" (iptr) int))
  ;;
  (define gtk-printer-is-default
    (foreign-procedure "gtk_printer_is_default" (iptr) int))
  ;;
  (define gtk-printer-is-paused
    (foreign-procedure "gtk_printer_is_paused" (iptr) int))
  ;;
  (define gtk-printer-is-virtual
    (foreign-procedure "gtk_printer_is_virtual" (iptr) int))
  ;;
  (define gtk-printer-list-papers
    (foreign-procedure "gtk_printer_list_papers" (iptr) iptr))
  ;;
  (define gtk-printer-request-details
    (foreign-procedure "gtk_printer_request_details" (iptr) void))
  ;;
  (define gtk-print-job-new
    (foreign-procedure "gtk_print_job_new" (string iptr iptr iptr) iptr))
  ;;
  (define gtk-print-job-get-collate
    (foreign-procedure "gtk_print_job_get_collate" (iptr) int))
  ;;
  (define gtk-print-job-get-n-up
    (foreign-procedure "gtk_print_job_get_n_up" (iptr) int))
  ;;
  (define gtk-print-job-get-n-up-layout
    (foreign-procedure "gtk_print_job_get_n_up_layout" (iptr) iptr))
  ;;
  (define gtk-print-job-get-num-copies
    (foreign-procedure "gtk_print_job_get_num_copies" (iptr) int))
  ;;
  (define gtk-print-job-get-page-ranges
    (foreign-procedure "gtk_print_job_get_page_ranges" (iptr int) iptr))
  ;;
  (define gtk-print-job-get-page-set
    (foreign-procedure "gtk_print_job_get_page_set" (iptr) iptr))
  ;;
  (define gtk-print-job-get-pages
    (foreign-procedure "gtk_print_job_get_pages" (iptr) iptr))
  ;;
  (define gtk-print-job-get-printer
    (foreign-procedure "gtk_print_job_get_printer" (iptr) iptr))
  ;;
  (define gtk-print-job-get-reverse
    (foreign-procedure "gtk_print_job_get_reverse" (iptr) int))
  ;;
  (define gtk-print-job-get-rotate
    (foreign-procedure "gtk_print_job_get_rotate" (iptr) int))
  ;;
  (define gtk-print-job-get-scale
    (foreign-procedure "gtk_print_job_get_scale" (iptr) double))
  ;;
  (define gtk-print-job-get-settings
    (foreign-procedure "gtk_print_job_get_settings" (iptr) iptr))
  ;;
  (define gtk-print-job-get-status
    (foreign-procedure "gtk_print_job_get_status" (iptr) iptr))
  ;;
  (define gtk-print-job-get-surface
    (foreign-procedure "gtk_print_job_get_surface" (iptr iptr) iptr))
  ;;
  (define gtk-print-job-get-title
    (foreign-procedure "gtk_print_job_get_title" (iptr) string))
  ;;
  (define gtk-print-job-get-track-print-status
    (foreign-procedure "gtk_print_job_get_track_print_status" (iptr) int))
  ;;
  (define gtk-print-job-send
    (foreign-procedure "gtk_print_job_send" (iptr iptr iptr iptr) void))
  ;;
  (define gtk-print-job-set-collate
    (foreign-procedure "gtk_print_job_send" (iptr int) void))
  ;;
  (define gtk-print-job-set-n-up
    (foreign-procedure "gtk_print_job_set_n_up" (iptr int) void))
  ;;
  (define gtk-print-job-set-n-up-layout
    (foreign-procedure "gtk_print_job_set_n_up_layout" (iptr iptr) void))
  ;;
  (define gtk-print-job-set-num-copies
    (foreign-procedure "gtk_print_job_set_num_copies" (iptr int) void))
  ;;
  (define gtk-print-job-set-page-ranges
    (foreign-procedure "gtk_print_job_set_page_ranges" (iptr iptr int) void))
  ;;
  (define gtk-print-job-set-page-set
    (foreign-procedure "gtk_print_job_set_page_set" (iptr iptr) void))
  ;;
  (define gtk-print-job-set-pages
    (foreign-procedure "gtk_print_job_set_pages" (iptr iptr) void))
  ;;
  (define gtk-print-job-set-reverse
    (foreign-procedure "gtk_print_job_set_reverse" (iptr int) void))
  ;;
  (define gtk-print-job-set-rotate
    (foreign-procedure "gtk_print_job_set_rotate" (iptr int) void))
  ;;
  (define gtk-print-job-set-scale
    (foreign-procedure "gtk_print_job_set_scale" (iptr double) void))
  ;;
  (define gtk-print-job-set-source-fd
    (foreign-procedure "gtk_print_job_set_source_fd" (iptr int iptr) int))
  ;;
  (define gtk-print-job-set-source-file
    (foreign-procedure "gtk_print_job_set_source_file" (iptr string iptr) int))
  ;;
  (define gtk-print-job-set-track-print-status
    (foreign-procedure "gtk_print_job_set_track_print_status" (iptr int) void))
  ;;
  (define gtk-print-operation-new
    (foreign-procedure "gtk_print_operation_new" () iptr))
  ;;
  (define gtk-print-operation-cancel
    (foreign-procedure "gtk_print_operation_cancel" (iptr) void))
  ;;
  (define gtk-print-operation-draw-page-finish
    (foreign-procedure "gtk_print_operation_draw_page_finish" (iptr) void))
  ;;
  (define gtk-print-operation-get-default-page-setup
    (foreign-procedure "gtk_print_operation_get_default_page_setup" (iptr) iptr))
  ;;
  (define gtk-print-operation-get-embed-page-setup
    (foreign-procedure "gtk_print_operation_get_embed_page_setup" (iptr) int))  
  ;;
  (define gtk-print-operation-get-error
    (foreign-procedure "gtk_print_operation_get_error" (iptr iptr) void))
  ;;
  (define gtk-print-operation-get-has-selection
    (foreign-procedure "gtk_print_operation_get_has_selection" (iptr) int))
  ;;
  (define gtk-print-operation-get-n-pages-to-print
    (foreign-procedure "gtk_print_operation_get_n_pages_to_print" (iptr) int))
  ;;
  (define gtk-print-operation-get-print-settings
    (foreign-procedure "gtk_print_operation_get_print_settings" (iptr) iptr))
  ;;
  (define gtk-print-operation-get-status
    (foreign-procedure "gtk_print_operation_get_status" (iptr) iptr))
  ;;
  (define gtk-print-operation-get-status-string
    (foreign-procedure "gtk_print_operation_get_status_string" (iptr) string))
  ;;
  (define gtk-print-operation-get-support-selection
    (foreign-procedure "gtk_print_operation_get_support_selection" (iptr) int))
  ;;
  (define gtk-print-operation-is-finished
    (foreign-procedure "gtk_print_operation_is_finished" (iptr) int))
  ;;
  (define gtk-print-operation-run
    (foreign-procedure "gtk_print_operation_run" (iptr iptr iptr iptr) iptr))
  ;;
  (define gtk-print-operation-set-allow-async
    (foreign-procedure "gtk_print_operation_set_allow_async" (iptr int) void))
  ;;
  (define gtk-print-operation-set-current-page
    (foreign-procedure "gtk_print_operation_set_current_page" (iptr int) void))
  ;;
  (define gtk-print-operation-set-custom-tab-label
    (foreign-procedure "gtk_print_operation_set_custom_tab_label"
		       (iptr string) void))
  ;;
  (define gtk-print-operation-set-default-page-setup
    (foreign-procedure "gtk_print_operation_set_default_page_setup"
		       (iptr iptr) void))
  ;;
  (define gtk-print-operation-set-defer-drawing
    (foreign-procedure "gtk_print_operation_set_defer_drawing" (iptr) void))
  ;;
  (define gtk-print-operation-set-embed-page-setup
    (foreign-procedure "gtk_print_operation_set_embed_page_setup"
		       (iptr int) void))
  ;;
  (define gtk-print-operation-set-export-filename
    (foreign-procedure "gtk_print_operation_set_export_filename"
		       (iptr string) void))
  ;;
  (define gtk-print-operation-set-has-selection
    (foreign-procedure "gtk_print_operation_set_has_selection" (iptr int) void))
  ;;
  (define gtk-print-operation-set-job-name
    (foreign-procedure "gtk_print_operation_set_job_name" (iptr string) void))
  ;;
  (define gtk-print-operation-set-n-pages
    (foreign-procedure "gtk_print_operation_set_n_pages" (iptr int) void))
  ;;
  (define gtk-print-operation-set-print-settings
    (foreign-procedure "gtk_print_operation_set_print_settings"
		       (iptr iptr) void))
  ;;
  (define gtk-print-operation-set-show-progress
    (foreign-procedure "gtk_print_operation_set_show_progress" (iptr int) void))
  ;;
  (define gtk-print-operation-set-support-selection
    (foreign-procedure "gtk_print_operation_set_support_selection"
		       (iptr int) void))
  ;;
  (define gtk-print-operation-set-track-print-status
    (foreign-procedure "gtk_print_operation_set_track_print_status"
		       (iptr int) void))
  ;;
  (define gtk-print-operation-set-unit
    (foreign-procedure "gtk_print_operation_set_unit" (iptr iptr) void))
  ;;
  (define gtk-print-operation-set-use-full-page
    (foreign-procedure "gtk_print_operation_set_use_full_page" (iptr int) void))
  ;;
  (define gtk-print-settings-new
    (foreign-procedure "gtk_print_settings_new" () iptr))
  ;;
  (define gtk-print-settings-new-from-file
    (foreign-procedure "gtk_print_settings_new_from_file" (string iptr) iptr))
  ;;
  (define gtk-print-settings-new-from-gvariant
    (foreign-procedure "gtk_print_settings_new_from_gvariant" (iptr) iptr))
  ;;
  (define gtk-print-settings-new-from-key-file
    (foreign-procedure "gtk_print_settings_new_from_key_file"
		       (iptr string iptr) iptr))
  ;;
  (define gtk-print-settings-copy
    (foreign-procedure "gtk_print_settings_copy" (iptr) iptr))
  ;;
  (define gtk-print-settings-foreach
    (foreign-procedure "gtk_print_settings_foreach" (iptr iptr iptr) void))
  ;;
  (define gtk-print-settings-get
    (foreign-procedure "gtk_print_settings_get" (iptr string) string))
  ;;
  (define gtk-print-settings-get-bool
    (foreign-procedure "gtk_print_settings_get_bool" (iptr string) int))
  ;;
  (define gtk-print-settings-get-collate
    (foreign-procedure "gtk_print_settings_get_collate" (iptr) int))
  ;;
  (define gtk-print-settings-get-default-source
    (foreign-procedure "gtk_print_settings_get_default_source" (iptr) string))
  ;;
  (define gtk-print-settings-get-dither
    (foreign-procedure "gtk_print_settings_get_dither" (iptr) string))
  ;;
  (define gtk-print-settings-get-double
    (foreign-procedure "gtk_print_settings_get_double" (iptr string) double))
  ;;
  (define gtk-print-settings-get-double-with-default
    (foreign-procedure "gtk_print_settings_get_double_with_default"
		       (iptr string double) double))
  ;;
  (define gtk-print-settings-get-duplex
    (foreign-procedure "gtk_print_settings_get_duplex" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-finishings
    (foreign-procedure "gtk_print_settings_get_finishings" (iptr) string))
  ;;
  (define gtk-print-settings-get-int
    (foreign-procedure "gtk_print_settings_get_int" (iptr string) int))
  ;;
  (define gtk-print-settings-get-int-with-default
    (foreign-procedure "gtk_print_settings_get_int_with_default"
		       (iptr string int) int))
  ;;
  (define gtk-print-settings-get-length
    (foreign-procedure "gtk_print_settings_get_length"
		       (iptr string iptr) double))
  ;;
  (define gtk-print-settings-get-media-type
    (foreign-procedure "gtk_print_settings_get_media_type" (iptr) string))
  ;;
  (define gtk-print-settings-get-n-copies
    (foreign-procedure "gtk_print_settings_get_n_copies" (iptr) int))
  ;;
  (define gtk-print-settings-get-number-up
    (foreign-procedure "gtk_print_settings_get_number_up" (iptr) int))
  ;;
  (define gtk-print-settings-get-number-up-layout
    (foreign-procedure "gtk_print_settings_get_number_up_layout" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-orientation
    (foreign-procedure "gtk_print_settings_get_orientation" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-output-bin
    (foreign-procedure "gtk_print_settings_get_output_bin" (iptr) string))
  ;;
  (define gtk-print-settings-get-page-ranges
    (foreign-procedure "gtk_print_settings_get_page_ranges" (iptr int) iptr))
  ;;
  (define gtk-print-settings-get-page-set
    (foreign-procedure "gtk_print_settings_get_page_set" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-paper-height
    (foreign-procedure "gtk_print_settings_get_paper_height" (iptr int) double))
  ;;
  (define gtk-print-settings-get-paper-size
    (foreign-procedure "gtk_print_settings_get_paper_size" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-paper-width
    (foreign-procedure "gtk_print_settings_get_paper_width" (iptr int) double))
  ;;
  (define gtk-print-settings-get-print-pages
    (foreign-procedure "gtk_print_settings_get_print_pages" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-printer
    (foreign-procedure "gtk_print_settings_get_printer" (iptr) string))
  ;;
  (define gtk-print-settings-get-printer-lpi
    (foreign-procedure "gtk_print_settings_get_printer_lpi" (iptr) double))
  ;;
  (define gtk-print-settings-get-quality
    (foreign-procedure "gtk_print_settings_get_quality" (iptr) iptr))
  ;;
  (define gtk-print-settings-get-resolution
    (foreign-procedure "gtk_print_settings_get_resolution" (iptr) int))
  ;;
  (define gtk-print-settings-get-resolution-x
    (foreign-procedure "gtk_print_settings_get_resolution_x" (iptr) int))
  ;;
  (define gtk-print-settings-get-resolution-y
    (foreign-procedure "gtk_print_settings_get_resolution_y" (iptr) int))
  ;;
  (define gtk-print-settings-get-reverse
    (foreign-procedure "gtk_print_settings_get_reverse" (iptr) int))
  ;;
  (define gtk-print-settings-get-scale
    (foreign-procedure "gtk_print_settings_get_scale" (iptr) double))
  ;;
  (define gtk-print-settings-get-use-color
    (foreign-procedure "gtk_print_settings_get_use_color" (iptr) int))
  ;;
  (define gtk-print-settings-has-key
    (foreign-procedure "gtk_print_settings_has_key" (iptr string) int))
  ;;
  (define gtk-print-settings-load-file
    (foreign-procedure "gtk_print_settings_load_file" (iptr string iptr) int))
  ;;
  (define gtk-print-settings-load-key-file
    (foreign-procedure "gtk_print_settings_load_key_file"
		       (iptr iptr string iptr) int))
  ;;
  (define gtk-print-settings-set
    (foreign-procedure "gtk_print_settings_set" (iptr string string) void))
  ;;
  (define gtk-print-settings-set-bool
    (foreign-procedure "gtk_print_settings_set_bool" (iptr string int) void))
  ;;
  (define gtk-print-settings-set-collate
    (foreign-procedure "gtk_print_settings_set_collate" (iptr int) void))
  ;;
  (define gtk-print-settings-set-default-source
    (foreign-procedure "gtk_print_settings_set_default_source"
		       (iptr string) void))
  ;;
  (define gtk-print-settings-set-dither
    (foreign-procedure "gtk_print_settings_set_dither" (iptr string) void))
  ;;
  (define gtk-print-settings-set-double
    (foreign-procedure "gtk_print_settings_set_double" (iptr string double) void))
  ;;
  (define gtk-print-settings-set-duplex
    (foreign-procedure "gtk_print_settings_set_duplex" (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-finishings
    (foreign-procedure "gtk_print_settings_set_finishings" (iptr string) void))
  ;;
  (define gtk-print-settings-set-int
    (foreign-procedure "gtk_print_settings_set_int" (iptr string int) void))
  ;;
  (define gtk-print-settings-set-length
    (foreign-procedure "gtk_print_settings_set_length"
		       (iptr string double int) void))
  ;;
  (define gtk-print-settings-set-media-type
    (foreign-procedure "gtk_print_settings_set_media_type" (iptr string) void))
  ;;
  (define gtk-print-settings-set-n-copies
    (foreign-procedure "gtk_print_settings_set_n_copies" (iptr int) void))
  ;;
  (define gtk-print-settings-set-number-up
    (foreign-procedure "gtk_print_settings_set_number_up" (iptr int) void))
  ;;
  (define gtk-print-settings-set-number-up-layout
    (foreign-procedure "gtk_print_settings_set_number_up_layout"
		       (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-orientation
    (foreign-procedure "gtk_print_settings_set_orientation" (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-output-bin
    (foreign-procedure "gtk_print_settings_set_output_bin" (iptr string) void))
  ;;
  (define gtk-print-settings-set-page-ranges
    (foreign-procedure "gtk_print_settings_set_page_ranges"
		       (iptr iptr int) void))
  ;;
  (define gtk-print-settings-set-page-set
    (foreign-procedure "gtk_print_settings_set_page_set" (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-paper-height
    (foreign-procedure "gtk_print_settings_set_paper_height"
		       (iptr double int) void))
  ;;
  (define gtk-print-settings-set-paper-size
    (foreign-procedure "gtk_print_settings_set_paper_size" (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-paper-width
    (foreign-procedure "gtk_print_settings_set_paper_width"
		       (iptr double int) void))
  ;;
  (define gtk-print-settings-set-print-pages
    (foreign-procedure "gtk_print_settings_set_print_pages" (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-printer
    (foreign-procedure "gtk_print_settings_set_printer" (iptr string) void))
  ;;
  (define gtk-print-settings-set-printer-lpi
    (foreign-procedure "gtk_print_settings_set_printer_lpi" (iptr double) void))
  ;;
  (define gtk-print-settings-set-quality
    (foreign-procedure "gtk_print_settings_set_quality" (iptr iptr) void))
  ;;
  (define gtk-print-settings-set-resolution
    (foreign-procedure "gtk_print_settings_set_resolution" (iptr int) void))
  ;;
  (define gtk-print-settings-set-resolution-xy
    (foreign-procedure "gtk_print_settings_set_resolution_xy"
		       (iptr int int) void))
  ;;
  (define gtk-print-settings-set-reverse
    (foreign-procedure "gtk_print_settings_set_reverse" (iptr int) void))
  ;;
  (define gtk-print-settings-set-scale
    (foreign-procedure "gtk_print_settings_set_scale" (iptr double) void))
  ;;
  (define gtk-print-settings-set-use-color
    (foreign-procedure "gtk_print_settings_set_use_color" (iptr int) void))
  ;;
  (define gtk-print-settings-to-file
    (foreign-procedure "gtk_print_settings_to_file" (iptr string iptr) int))
  ;;
  (define gtk-print-settings-to-gvariant
    (foreign-procedure "gtk_print_settings_to_gvariant" (iptr) iptr))
  ;;
  (define gtk-print-settings-to-key-file
    (foreign-procedure "gtk_print_settings_to_key_file"
		       (iptr iptr string) void))
  ;;
  (define gtk-print-settings-unset
    (foreign-procedure "gtk_print_settings_unset" (iptr string) void))
  ;;
  (define gtk-print-unix-dialog-new
    (foreign-procedure "gtk_print_unix_dialog_new" (string iptr) iptr))
  ;;
  (define gtk-print-unix-dialog-add-custom-tab
    (foreign-procedure "gtk_print_unix_dialog_add_custom_tab"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-print-unix-dialog-get-current-page
    (foreign-procedure "gtk_print_unix_dialog_get_current_page" (iptr) int))
  ;;
  (define gtk-print-unix-dialog-get-embed-page-setup
    (foreign-procedure "gtk_print_unix_dialog_get_embed_page_setup" (iptr) int))
  ;;
  (define gtk-print-unix-dialog-get-has-selection
    (foreign-procedure "gtk_print_unix_dialog_get_has_selection" (iptr) int))
  ;;
  (define gtk-print-unix-dialog-get-manual-capabilities
    (foreign-procedure "gtk_print_unix_dialog_get_manual_capabilities"
		       (iptr) iptr))
  ;;
  (define gtk-print-unix-dialog-get-page-setup
    (foreign-procedure "gtk_print_unix_dialog_get_page_setup" (iptr) iptr))
  ;;
  (define gtk-print-unix-dialog-get-page-setup-set
    (foreign-procedure "gtk_print_unix_dialog_get_page_setup_set" (iptr) int))
  ;;
  (define gtk-print-unix-dialog-get-selected-printer
    (foreign-procedure "gtk_print_unix_dialog_get_selected_printer" (iptr) iptr))
  ;;
  (define gtk-print-unix-dialog-get-settings
    (foreign-procedure "gtk_print_unix_dialog_get_settings" (iptr) iptr))
  ;;
  (define gtk-print-unix-dialog-get-support-selection
    (foreign-procedure "gtk_print_unix_dialog_get_support_selection" (iptr) int))
  ;;
  (define gtk-print-unix-dialog-set-current-page
    (foreign-procedure "gtk_print_unix_dialog_set_current_page" (iptr int) void))
  ;;
  (define gtk-print-unix-dialog-set-embed-page-setup
    (foreign-procedure "gtk_print_unix_dialog_set_embed_page_setup"
		       (iptr int) void))
  ;;
  (define gtk-print-unix-dialog-set-has-selection
    (foreign-procedure "gtk_print_unix_dialog_set_has_selection"
		       (iptr int) void))
  ;;
  (define gtk-print-unix-dialog-set-manual-capabilities
    (foreign-procedure "gtk_print_unix_dialog_set_manual_capabilities"
		       (iptr iptr) void))
  ;;
  (define gtk-print-unix-dialog-set-page-setup
    (foreign-procedure "gtk_print_unix_dialog_set_page_setup" (iptr iptr) void))
  ;;
  (define gtk-print-unix-dialog-set-settings
    (foreign-procedure "gtk_print_unix_dialog_set_settings" (iptr iptr) void))
  ;;
  (define gtk-print-unix-dialog-set-support-selection
    (foreign-procedure "gtk_print_unix_dialog_set_support_selection"
		       (iptr int) void))
  ;;
  (define gtk-progress-bar-new
    (foreign-procedure "gtk_progress_bar_new" () iptr))
  ;;
  (define gtk-progress-bar-get-ellipsize
    (foreign-procedure "gtk_progress_bar_get_ellipsize" (iptr) iptr))
  ;;
  (define gtk-progress-bar-get-fraction
    (foreign-procedure "gtk_progress_bar_get_fraction" (iptr) double))
  ;;
  (define gtk-progress-bar-get-inverted
    (foreign-procedure "gtk_progress_bar_get_inverted" (iptr) int))
  ;;
  (define gtk-progress-bar-get-pulse-step
    (foreign-procedure "gtk_progress_bar_get_pulse_step" (iptr) double))
  ;;
  (define gtk-progress-bar-get-show-text
    (foreign-procedure "gtk_progress_bar_get_show_text" (iptr) int))
  ;;
  (define gtk-progress-bar-get-text
    (foreign-procedure "gtk_progress_bar_get_text" (iptr) string))
  ;;
  (define gtk-progress-bar-pulse
    (foreign-procedure "gtk_progress_bar_pulse" (iptr) void))
  ;;
  (define gtk-progress-bar-set-ellipsize
    (foreign-procedure "gtk_progress_bar_set_ellipsize" (iptr iptr) void))
  ;;
  (define gtk-progress-bar-set-fraction
    (foreign-procedure "gtk_progress_bar_set_fraction" (iptr double) void))
  ;;
  (define gtk-progress-bar-set-inverted
    (foreign-procedure "gtk_progress_bar_set_inverted" (iptr int) void))
  ;;
  (define gtk-progress-bar-set-pulse-step
    (foreign-procedure "gtk_progress_bar_set_pulse_step" (iptr double) void))
  ;;
  (define gtk-progress-bar-set-show-text
    (foreign-procedure "gtk_progress_bar_set_show_text" (iptr int) void))
  ;;
  (define gtk-progress-bar-set-text
    (foreign-procedure "gtk_progress_bar_set_text" (iptr string) void))
  ;;
  (define gtk-property-expression-new
    (foreign-procedure "gtk_property_expression_new" (iptr iptr string) iptr))
  ;;
  (define gtk-property-expression-new-for-pspec
    (foreign-procedure "gtk_property_expression_new_for_pspec"
		       (iptr iptr) iptr))
  ;;
  (define gtk-property-expression-get-expression
    (foreign-procedure "gtk_property_expression_get_expression" (iptr) iptr))
  ;;
  (define gtk-property-expression-get-pspec
    (foreign-procedure "gtk_property_expression_get_pspec" (iptr) iptr))
  ;;
  (define gtk-range-get-adjustment
    (foreign-procedure "gtk_range_get_adjustment" (iptr) iptr))
  ;;
  (define gtk-range-get-fill-level
    (foreign-procedure "gtk_range_get_fill_level" (iptr) double))
  ;;
  (define gtk-range-get-flippable
    (foreign-procedure "gtk_range_get_fill_level" (iptr) int))
  ;;
  (define gtk-range-get-inverted
    (foreign-procedure "gtk_range_get_inverted" (iptr) int))
  ;;
  (define gtk-range-get-range-rect
    (foreign-procedure "gtk_range_get_range_rect" (iptr iptr) void))
  ;;
  (define gtk-range-get-restrict-to-fill-level
    (foreign-procedure "gtk_range_get_restrict_to_fill_level" (iptr) int))
  ;;
  (define gtk-range-get-round-digits
    (foreign-procedure "gtk_range_get_round_digits" (iptr) int))
  ;;
  (define gtk-range-get-show-fill-level
    (foreign-procedure "gtk_range_get_show_fill_level" (iptr) int))
  ;;
  (define gtk-range-get-slider-range
    (foreign-procedure "gtk_range_get_slider_range" (iptr int int) void))
  ;;
  (define gtk-range-get-slider-size-fixed
    (foreign-procedure "gtk_range_get_slider_size_fixed" (iptr) int))
  ;;
  (define gtk-range-get-value
    (foreign-procedure "gtk_range_get_value" (iptr) double))
  ;;
  (define gtk-range-set-adjustment
    (foreign-procedure "gtk_range_set_adjustment" (iptr iptr) void))
  ;;
  (define gtk-range-set-fill-level
    (foreign-procedure "gtk_range_set_fill_level" (iptr double) void))
  ;;
  (define gtk-range-set-flippable
    (foreign-procedure "gtk_range_set_flippable" (iptr int) void))
  ;;
  (define gtk-range-set-increments
    (foreign-procedure "gtk_range_set_increments" (iptr double double) void))
  ;;
  (define gtk-range-set-inverted
    (foreign-procedure "gtk_range_set_inverted" (iptr int) void))
  ;;
  (define gtk-range-set-range
    (foreign-procedure "gtk_range_set_range" (iptr double double) void))
  ;;
  (define gtk-range-set-restrict-to-fill-level
    (foreign-procedure "gtk_range_set_restrict_to_fill_level" (iptr int) void))
  ;;
  (define gtk-range-set-round-digits
    (foreign-procedure "gtk_range_set_round_digits" (iptr int) void))
  ;;
  (define gtk-range-set-show-fill-level
    (foreign-procedure "gtk_range_set_show_fill_level" (iptr int) void))
  ;;
  (define gtk-range-set-slider-size-fixed
    (foreign-procedure "gtk_range_set_slider_size_fixed" (iptr int) void))
  ;;
  (define gtk-range-set-value
    (foreign-procedure "gtk_range_set_value" (iptr double) void))
  ;;
  (define gtk-recent-manager-new
    (foreign-procedure "gtk_recent_manager_new" () iptr))
  ;;
  (define gtk-recent-manager-get-default
    (foreign-procedure "gtk_recent_manager_get_default" () iptr))
  ;;
  (define gtk-recent-manager-add-full
    (foreign-procedure "gtk_recent_manager_add_full" (iptr string iptr) int))
  ;;
  (define gtk-recent-manager-add-item
    (foreign-procedure "gtk_recent_manager_add_item" (iptr string) int))
  ;;
  (define gtk-recent-manager-get-items
    (foreign-procedure "gtk_recent_manager_get_items" (iptr) iptr))
  ;;
  (define gtk-recent-manager-has-item
    (foreign-procedure "gtk_recent_manager_has_item" (iptr string) int))
  ;;
  (define gtk-recent-manager-lookup-item
    (foreign-procedure "gtk_recent_manager_lookup_item" (iptr string iptr) iptr))
  ;;
  (define gtk-recent-manager-move-item
    (foreign-procedure "gtk_recent_manager_move_item"
		       (iptr string string iptr) int))
  ;;
  (define gtk-recent-manager-purge-items
    (foreign-procedure "gtk_recent_manager_purge_items" (iptr iptr) int))
  ;;
  (define gtk-recent-manager-remove-item
    (foreign-procedure "gtk_recent_manager_remove_item" (iptr string iptr) int))
  ;;
  (define gtk-revealer-new
    (foreign-procedure "gtk_revealer_new" () iptr))
  ;;
  (define gtk-revealer-get-child
    (foreign-procedure "gtk_revealer_get_child" (iptr) iptr))
  ;;
  (define gtk-revealer-get-child-revealed
    (foreign-procedure "gtk_revealer_get_child_revealed" (iptr) int))
  ;;
  (define gtk-revealer-get-reveal-child
    (foreign-procedure "gtk_revealer_get_reveal_child" (iptr) int))
  ;;
  (define gtk-revealer-get-transition-duration
    (foreign-procedure "gtk_revealer_get_transition_duration" (iptr) int))
  ;;
  (define gtk-revealer-get-transition-type
    (foreign-procedure "gtk_revealer_get_transition_type" (iptr) iptr))
  ;;
  (define gtk-revealer-set-child
    (foreign-procedure "gtk_revealer_set_child" (iptr iptr) void))
  ;;
  (define gtk-revealer-set-reveal-child
    (foreign-procedure "gtk_revealer_set_reveal_child" (iptr int) void))
  ;;
  (define gtk-revealer-set-transition-duration
    (foreign-procedure "gtk_revealer_set_transition_duration" (iptr int) void))
  ;;
  (define gtk-revealer-set-transition-type
    (foreign-procedure "gtk_revealer_set_transition_type" (iptr iptr) void))
  ;;
  (define gtk-scale-new
    (foreign-procedure "gtk_scale_new" (iptr iptr) iptr))
  ;;
  (define gtk-scale-new-with-range
    (foreign-procedure "gtk_scale_new_with_range"
		       (iptr double double double) iptr))
  ;;
  (define gtk-scale-add-mark
    (foreign-procedure "gtk_scale_add_mark" (iptr double iptr string) void))
  ;;
  (define gtk-scale-clear-marks
    (foreign-procedure "gtk_scale_clear_marks" (iptr) void))
  ;;
  (define gtk-scale-get-digits
    (foreign-procedure "gtk_scale_get_digits" (iptr) int))
  ;;
  (define gtk-scale-get-draw-value
    (foreign-procedure "gtk_scale_get_draw_value" (iptr) int))
  ;;
  (define gtk-scale-get-has-origin
    (foreign-procedure "gtk_scale_get_has_origin" (iptr) int))
  ;;
  (define gtk-scale-get-layout
    (foreign-procedure "gtk_scale_get_layout" (iptr) iptr))
  ;;
  (define gtk-scale-get-layout-offsets
    (foreign-procedure "gtk_scale_get_layout_offsets" (iptr int int) void))
  ;;
  (define gtk-scale-get-value-pos
    (foreign-procedure "gtk_scale_get_value_pos" (iptr) iptr))
  ;;
  (define gtk-scale-set-digits
    (foreign-procedure "gtk_scale_set_digits" (iptr int) void))
  ;;
  (define gtk-scale-set-draw-value
    (foreign-procedure "gtk_scale_set_draw_value" (iptr int) void))
  ;;
  (define gtk-scale-set-format-value-func
    (foreign-procedure "gtk_scale_set_format_value_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-scale-set-has-origin
    (foreign-procedure "gtk_scale_set_has_origin" (iptr int) void))
  ;;
  (define gtk-scale-set-value-pos
    (foreign-procedure "gtk_scale_set_value_pos" (iptr iptr) void))
  ;;
  (define gtk-scale-button-new
    (foreign-procedure "gtk_scale_button_new"
		       (double double double string) iptr))
  ;;
  (define gtk-scale-button-get-adjustment
    (foreign-procedure "gtk_scale_button_get_adjustment" (iptr) iptr))
  ;;
  (define gtk-scale-button-get-minus-button
    (foreign-procedure "gtk_scale_button_get_minus_button" (iptr) iptr))
  ;;
  (define gtk-scale-button-get-plus-button
    (foreign-procedure "gtk_scale_button_get_plus_button" (iptr) iptr))
  ;;
  (define gtk-scale-button-get-popup
    (foreign-procedure "gtk_scale_button_get_popup" (iptr) iptr))
  ;;
  (define gtk-scale-button-get-value
    (foreign-procedure "gtk_scale_button_get_value" (iptr) double))
  ;;
  (define gtk-scale-button-set-adjustment
    (foreign-procedure "gtk_scale_button_set_adjustment" (iptr iptr) void))
  ;;
  (define gtk-scale-button-set-icons
    (foreign-procedure "gtk_scale_button_set_icons" (iptr string) void))
  ;;
  (define gtk-scale-button-set-value
    (foreign-procedure "gtk_scale_button_set_value" (iptr double) void))
  ;;
  (define gtk-scrollbar-new
    (foreign-procedure "gtk_scrollbar_new" (iptr iptr) iptr))
  ;;
  (define gtk-scrollbar-get-adjustment
    (foreign-procedure "gtk_scrollbar_get_adjustment" (iptr) iptr))
  ;;
  (define gtk-scrollbar-set-adjustment
    (foreign-procedure "gtk_scrollbar_set_adjustment" (iptr iptr) void))
  ;;
  (define gtk-scrolled-window-new
    (foreign-procedure "gtk_scrolled_window_new" () iptr))
  ;;
  (define gtk-scrolled-window-get-child
    (foreign-procedure "gtk_scrolled_window_get_child" (iptr) iptr))
  ;;
  (define gtk-scrolled-window-get-hadjustment
    (foreign-procedure "gtk_scrolled_window_get_hadjustment" (iptr) iptr))
  ;;
  (define gtk-scrolled-window-get-has-frame
    (foreign-procedure "gtk_scrolled_window_get_has_frame" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-hscrollbar
    (foreign-procedure "gtk_scrolled_window_get_hscrollbar" (iptr) iptr))
  ;;
  (define gtk-scrolled-window-get-kinetic-scrolling
    (foreign-procedure "gtk_scrolled_window_get_kinetic_scrolling" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-max-content-height
    (foreign-procedure "gtk_scrolled_window_get_max_content_height" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-max-content-width
    (foreign-procedure "gtk_scrolled_window_get_max_content_width" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-min-content-height
    (foreign-procedure "gtk_scrolled_window_get_min_content_height" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-min-content-width
    (foreign-procedure "gtk_scrolled_window_get_min_content_width" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-overlay-scrolling
    (foreign-procedure "gtk_scrolled_window_get_overlay_scrolling" (iptr) int))
  ;;
  (define gtk-scrolled-window-get-placement
    (foreign-procedure "gtk_scrolled_window_get_placement" (iptr) iptr))
  ;;
  (define gtk-scrolled-window-get-policy
    (foreign-procedure "gtk_scrolled_window_get_policy" (iptr iptr iptr) void))
  ;;
  (define gtk-scrolled-window-get-propagate-natural-height
    (foreign-procedure "gtk_scrolled_window_get_propagate_natural_height"
		       (iptr) int))
  ;;
  (define gtk-scrolled-window-get-propagate-natural-width
    (foreign-procedure "gtk_scrolled_window_get_propagate_natural_width"
		       (iptr) int))
  ;;
  (define gtk-scrolled-window-get-vadjustment
    (foreign-procedure "gtk_scrolled_window_get_vadjustment" (iptr) iptr))
  ;;
  (define gtk-scrolled-window-get-vscrollbar
    (foreign-procedure "gtk_scrolled_window_get_vscrollbar" (iptr) iptr))
  ;;
  (define gtk-scrolled-window-set-child
    (foreign-procedure "gtk_scrolled_window_set_child" (iptr iptr) void))
  ;;
  (define gtk-scrolled-window-set-hadjustment
    (foreign-procedure "gtk_scrolled_window_set_hadjustment" (iptr iptr) void))
  ;;
  (define gtk-scrolled-window-set-has-frame
    (foreign-procedure "gtk_scrolled_window_set_has_frame" (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-kinetic-scrolling
    (foreign-procedure "gtk_scrolled_window_set_kinetic_scrolling"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-max-content-height
    (foreign-procedure "gtk_scrolled_window_set_max_content_height"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-max-content-width
    (foreign-procedure "gtk_scrolled_window_set_max_content_width"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-min-content-height
    (foreign-procedure "gtk_scrolled_window_set_min_content_height"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-min-content-width
    (foreign-procedure "gtk_scrolled_window_set_min_content_width"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-overlay-scrolling
    (foreign-procedure "gtk_scrolled_window_set_overlay_scrolling"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-placement
    (foreign-procedure "gtk_scrolled_window_set_placement" (iptr iptr) void))
  ;;
  (define gtk-scrolled-window-set-policy
    (foreign-procedure "gtk_scrolled_window_set_policy" (iptr iptr iptr) void))
  ;;
  (define gtk-scrolled-window-set-propagate-natural-height
    (foreign-procedure "gtk_scrolled_window_set_propagate_natural_height"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-propagate-natural-width
    (foreign-procedure "gtk_scrolled_window_set_propagate_natural_width"
		       (iptr int) void))
  ;;
  (define gtk-scrolled-window-set-vadjustment
    (foreign-procedure "gtk_scrolled_window_set_vadjustment" (iptr iptr) void))
  ;;
  (define gtk-scrolled-window-unset-placement
    (foreign-procedure "gtk_scrolled_window_unset_placement" (iptr) void))
  ;;
  (define gtk-search-bar-new
    (foreign-procedure "gtk_search_bar_new" () iptr))
  ;;
  (define gtk-search-bar-connect-entry
    (foreign-procedure "gtk_search_bar_connect_entry" (iptr iptr) void))
  ;;
  (define gtk-search-bar-get-child
    (foreign-procedure "gtk_search_bar_get_child" (iptr) iptr))
  ;;
  (define gtk-search-bar-get-key-capture-widget
    (foreign-procedure "gtk_search_bar_get_key_capture_widget" (iptr) iptr))
  ;;
  (define gtk-search-bar-get-search-mode
    (foreign-procedure "gtk_search_bar_get_search_mode" (iptr) int))
  ;;
  (define gtk-search-bar-get-show-close-button
    (foreign-procedure "gtk_search_bar_get_show_close_button" (iptr) int))
  ;;
  (define gtk-search-bar-set-child
    (foreign-procedure "gtk_search_bar_set_child" (iptr iptr) void))
  ;;
  (define gtk-search-bar-set-key-capture-widget
    (foreign-procedure "gtk_search_bar_set_key_capture_widget" (iptr iptr) void))
  ;;
  (define gtk-search-bar-set-search-mode
    (foreign-procedure "gtk_search_bar_set_search_mode" (iptr int) void))
  ;;
  (define gtk-search-bar-set-show-close-button
    (foreign-procedure "gtk_search_bar_set_show_close_button" (iptr int) void))
  ;;
  (define gtk-search-entry-new
    (foreign-procedure "gtk_search_entry_new" () iptr))
  ;;
  (define gtk-search-entry-get-key-capture-widget
    (foreign-procedure "gtk_search_entry_get_key_capture_widget" (iptr) iptr))
  ;;
  (define gtk-search-entry-set-key-capture-widget
    (foreign-procedure "gtk_search_entry_set_key_capture_widget"
		       (iptr iptr) void))
  ;;
  (define gtk-selection-filter-model-new
    (foreign-procedure "gtk_selection_filter_model_new" (iptr) iptr))
  ;;
  (define gtk-selection-filter-model-get-model
    (foreign-procedure "gtk_selection_filter_model_get_model" (iptr) iptr))
  ;;
  (define gtk-selection-filter-model-set-model
    (foreign-procedure "gtk_selection_filter_model_set_model" (iptr iptr) void))
  ;;
  (define gtk-separator-new
    (foreign-procedure "gtk_separator_new" (iptr) iptr))
  ;;
  (define gtk-settings-get-default
    (foreign-procedure "gtk_settings_get_default" () iptr))
  ;;
  (define gtk-settings-get-for-display
    (foreign-procedure "gtk_settings_get_for_display" (iptr) iptr))
  ;;
  (define gtk-settings-reset-property
    (foreign-procedure "gtk_settings_reset_property" (iptr string) void))
  ;;
  (define gtk-shortcut-new
    (foreign-procedure "gtk_shortcut_new" (iptr iptr) iptr))
  ;;
  (define gtk-shortcut-new-with-arguments
    (foreign-procedure "gtk_shortcut_new_with_arguments"
		       (iptr iptr string) iptr))
  ;;
  (define gtk-shortcut-get-action
    (foreign-procedure "gtk_shortcut_get_action" (iptr) iptr))
  ;;
  (define gtk-shortcut-get-arguments
    (foreign-procedure "gtk_shortcut_get_arguments" (iptr) iptr))
  ;;
  (define gtk-shortcut-get-trigger
    (foreign-procedure "gtk_shortcut_get_trigger" (iptr) iptr))
  ;;
  (define gtk-shortcut-set-action
    (foreign-procedure "gtk_shortcut_set_action" (iptr iptr) void))
  ;;
  (define gtk-shortcut-set-arguments
    (foreign-procedure "gtk_shortcut_set_arguments" (iptr iptr) void))
  ;;
  (define gtk-shortcut-set-trigger
    (foreign-procedure "gtk_shortcut_set_trigger" (iptr iptr) void))
  ;;
  (define gtk-shortcut-action-parse-string
    (foreign-procedure "gtk_shortcut_action_parse_string" (string) iptr))
  ;;
  (define gtk-shortcut-action-activate
    (foreign-procedure "gtk_shortcut_action_activate"
		       (iptr iptr iptr iptr) int))
  ;;
  (define gtk-shortcut-action-print
    (foreign-procedure "gtk_shortcut_action_print" (iptr string) void))
  ;;
  (define gtk-shortcut-action-to-string
    (foreign-procedure "gtk_shortcut_action_to_string" (iptr) string))
  ;;
  (define gtk-shortcut-controller-new
    (foreign-procedure "gtk_shortcut_controller_new" () iptr))
  ;;
  (define gtk-shortcut-controller-new-for-model
    (foreign-procedure "gtk_shortcut_controller_new_for_model" (iptr) iptr))
  ;;
  (define gtk-shortcut-controller-add-shortcut
    (foreign-procedure "gtk_shortcut_controller_add_shortcut" (iptr iptr) void))
  ;;
  (define gtk-shortcut-controller-get-mnemonics-modifiers
    (foreign-procedure "gtk_shortcut_controller_get_mnemonics_modifiers"
		       (iptr) iptr))
  ;;
  (define gtk-shortcut-controller-get-scope
    (foreign-procedure "gtk_shortcut_controller_get_scope" (iptr) iptr))
  ;;
  (define gtk-shortcut-controller-remove-shortcut
    (foreign-procedure "gtk_shortcut_controller_remove_shortcut"
		       (iptr iptr) void))
  ;;
  (define gtk-shortcut-controller-set-mnemonics-modifiers
    (foreign-procedure "gtk_shortcut_controller_set_mnemonics_modifiers"
		       (iptr iptr) void))
  ;;
  (define gtk-shortcut-controller-set-scope
    (foreign-procedure "gtk_shortcut_controller_set_scope" (iptr iptr) void))
  ;;
  (define gtk-shortcut-label-new
    (foreign-procedure "gtk_shortcut_label_new" (string) iptr))
  ;;
  (define gtk-shortcut-label-get-accelerator
    (foreign-procedure "gtk_shortcut_label_get_accelerator" (iptr) string))
  ;;
  (define gtk-shortcut-label-get-disabled-text
    (foreign-procedure "gtk_shortcut_label_get_disabled_text" (iptr) string))
  ;;
  (define gtk-shortcut-label-set-accelerator
    (foreign-procedure "gtk_shortcut_label_set_accelerator" (iptr string) void))
  ;;
  (define gtk-shortcut-label-set-disabled-text
    (foreign-procedure "gtk_shortcut_label_set_disabled_text"
		       (iptr string) void))
  ;;
  (define gtk-shortcut-trigger-parse-string
    (foreign-procedure "gtk_shortcut_trigger_parse_string" (string) iptr))
  ;;
  (define gtk-shortcut-trigger-compare
    (foreign-procedure "gtk_shortcut_trigger_compare" (iptr iptr) int))
  ;;
  (define gtk-shortcut-trigger-equal
    (foreign-procedure "gtk_shortcut_trigger_equal" (iptr iptr) int))
  ;;
  (define gtk-shortcut-trigger-hash
    (foreign-procedure "gtk_shortcut_trigger_hash" (iptr) int))
  ;;
  (define gtk-shortcut-trigger-print
    (foreign-procedure "gtk_shortcut_trigger_print" (iptr string) void))
  ;;
  (define gtk-shortcut-trigger-print-label
    (foreign-procedure "gtk_shortcut_trigger_print_label"
		       (iptr iptr string) int))
  ;;
  (define gtk-shortcut-trigger-to-label
    (foreign-procedure "gtk_shortcut_trigger_to_label" (iptr iptr) string))
  ;;
  (define gtk-shortcut-trigger-to-string
    (foreign-procedure "gtk_shortcut_trigger_to_string" (iptr) string))
  ;;
  (define gtk-shortcut-trigger-trigger
    (foreign-procedure "gtk_shortcut_trigger_trigger" (iptr iptr int) iptr))
  ;;
  (define gtk-signal-action-new
    (foreign-procedure "gtk_signal_action_new" (string) iptr))
  ;;
  (define gtk-signal-action-get-signal-name
    (foreign-procedure "gtk_signal_action_get_signal_name" (iptr) string))
  ;;
  (define gtk-signal-list-item-factory-new
    (foreign-procedure "gtk_signal_list_item_factory_new" () iptr))
  ;;
  (define gtk-single-selection-new
    (foreign-procedure "gtk_single_selection_new" (iptr) iptr))
  ;;
  (define gtk-single-selection-get-autoselect
    (foreign-procedure "gtk_single_selection_get_autoselect" (iptr) int))
  ;;
  (define gtk-single-selection-get-can-unselect
    (foreign-procedure "gtk_single_selection_get_can_unselect" (iptr) int))
  ;;
  (define gtk-single-selection-get-model
    (foreign-procedure "gtk_single_selection_get_model" (iptr) iptr))
  ;;
  (define gtk-single-selection-get-selected
    (foreign-procedure "gtk_single_selection_get_selected" (iptr) int))
  ;;
  (define gtk-single-selection-get-selected-item
    (foreign-procedure "gtk_single_selection_get_selected_item" (iptr) iptr))
  ;;
  (define gtk-single-selection-set-autoselect
    (foreign-procedure "gtk_single_selection_set_autoselect" (iptr int) void))
  ;;
  (define gtk-single-selection-set-can-unselect
    (foreign-procedure "gtk_single_selection_set_can_unselect" (iptr int) void))
  ;;
  (define gtk-single-selection-set-model
    (foreign-procedure "gtk_single_selection_set_model" (iptr iptr) void))
  ;;
  (define gtk-single-selection-set-selected
    (foreign-procedure "gtk_single_selection_set_selected" (iptr int) void))
  ;;
  (define gtk-size-group-new
    (foreign-procedure "gtk_size_group_new" (iptr) iptr))
  ;;
  (define gtk-size-group-add-widget
    (foreign-procedure "gtk_size_group_add_widget" (iptr iptr) void))
  ;;
  (define gtk-size-group-get-mode
    (foreign-procedure "gtk_size_group_get_mode" (iptr) iptr))
  ;;
  (define gtk-size-group-get-widgets
    (foreign-procedure "gtk_size_group_get_widgets" (iptr) iptr))
  ;;
  (define gtk-size-group-remove-widget
    (foreign-procedure "gtk_size_group_remove_widget" (iptr iptr) void))
  ;;
  (define gtk-size-group-set-mode
    (foreign-procedure "gtk_size_group_set_mode" (iptr iptr) void))
  ;;
  (define gtk-slice-list-model-new
    (foreign-procedure "gtk_slice_list_model_new" (iptr int int) iptr))
  ;;
  (define gtk-slice-list-model-get-model
    (foreign-procedure "gtk_slice_list_model_get_model" (iptr) iptr))
  ;;
  (define gtk-slice-list-model-get-offset
    (foreign-procedure "gtk_slice_list_model_get_offset" (iptr) int))
  ;;
  (define gtk-slice-list-model-get-size
    (foreign-procedure "gtk_slice_list_model_get_size" (iptr) int))
  ;;
  (define gtk-slice-list-model-set-model
    (foreign-procedure "gtk_slice_list_model_set_model" (iptr iptr) void))
  ;;
  (define gtk-slice-list-model-set-offset
    (foreign-procedure "gtk_slice_list_model_set_offset" (iptr int) void))
  ;;
  (define gtk-slice-list-model-set-size
    (foreign-procedure "gtk_slice_list_model_set_size" (iptr int) void))
  ;;
  (define gtk-snapshot-new
    (foreign-procedure "gtk_snapshot_new" () iptr))
  ;;
  (define gtk-snapshot-append-border
    (foreign-procedure "gtk_snapshot_append_border" (iptr iptr float iptr) void))
  ;;
  (define gtk-snapshot-append-cairo
    (foreign-procedure "gtk_snapshot_append_cairo" (iptr iptr) iptr))
  ;;
  (define gtk-snapshot-append-color
    (foreign-procedure "gtk_snapshot_append_color" (iptr iptr iptr) void))
  ;;
  (define gtk-snapshot-append-conic-gradient
    (foreign-procedure "gtk_snapshot_append_conic_gradient"
		       (iptr iptr iptr float iptr int) void))
  ;;
  (define gtk-snapshot-append-inset-shadow
    (foreign-procedure "gtk_snapshot_append_inset_shadow"
		       (iptr iptr iptr float float float float) void))
  ;;
  (define gtk-snapshot-append-layout
    (foreign-procedure "gtk_snapshot_append_layout" (iptr iptr iptr) void))
  ;;
  (define gtk-snapshot-append-linear-gradient
    (foreign-procedure "gtk_snapshot_append_linear_gradient"
		       (iptr iptr iptr iptr iptr int) void))
  ;;
  (define gtk-snapshot-append-node
    (foreign-procedure "gtk_snapshot_append_node" (iptr iptr) void))
  ;;
  (define gtk-snapshot-append-outset-shadow
    (foreign-procedure "gtk_snapshot_append_outset_shadow"
		       (iptr iptr iptr float float float float) void))
  ;;
  (define gtk-snapshot-append-radial-gradient
    (foreign-procedure "gtk_snapshot_append_radial_gradient"
		       (iptr iptr iptr float float float float iptr int) void))
  ;;
  (define gtk-snapshot-append-repeating-linear-gradient
    (foreign-procedure "gtk_snapshot_append_repeating_linear_gradient"
		       (iptr iptr iptr iptr iptr int) void))
  ;;
  (define gtk-snapshot-append-repeating-radial-gradient
    (foreign-procedure "gtk_snapshot_append_repeating_radial_gradient"
		       (iptr iptr iptr float float float float iptr int) void))
  ;;
  (define gtk-snapshot-append-texture
    (foreign-procedure "gtk_snapshot_append_texture" (iptr iptr iptr) void))
  ;;
  (define gtk-snapshot-free-to-node
    (foreign-procedure "gtk_snapshot_free_to_node" (iptr) iptr))
  ;;
  (define gtk-snapshot-free-to-paintable
    (foreign-procedure "gtk_snapshot_free_to_paintable" (iptr int) iptr))
  ;;
  (define gtk-snapshot-gl-shader-pop-texture
    (foreign-procedure "gtk_snapshot_gl_shader_pop_texture" (iptr) void))
  ;;
  (define gtk-snapshot-perspective
    (foreign-procedure "gtk_snapshot_perspective" (iptr float) void))
  ;;
  (define gtk-snapshot-pop
    (foreign-procedure "gtk_snapshot_pop" (iptr) void))
  ;;
  (define gtk-snapshot-push-blend
    (foreign-procedure "gtk_snapshot_push_blend" (iptr iptr) void))
  ;;
  (define gtk-snapshot-push-blur
    (foreign-procedure "gtk_snapshot_push_blur" (iptr double) void))
  ;;
  (define gtk-snapshot-push-clip
    (foreign-procedure "gtk_snapshot_push_clip" (iptr iptr) void))
  ;;
  (define gtk-snapshot-push-color-matrix
    (foreign-procedure "gtk_snapshot_push_color_matrix" (iptr iptr iptr) void))
  ;;
  (define gtk-snapshot-push-cross-fade
    (foreign-procedure "gtk_snapshot_push_cross_fade" (iptr double) void))
  ;;
  (define gtk-snapshot-push-debug
    (foreign-procedure "gtk_snapshot_push_debug" (iptr string) void))
  ;;
  (define gtk-snapshot-push-gl-shader
    (foreign-procedure "gtk_snapshot_push_gl_shader"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-snapshot-push-opacity
    (foreign-procedure "gtk_snapshot_push_opacity" (iptr double) void))
  ;;
  (define gtk-snapshot-push-repeat
    (foreign-procedure "gtk_snapshot_push_repeat" (iptr iptr iptr) void))
  ;;
  (define gtk-snapshot-push-rounded-clip
    (foreign-procedure "gtk_snapshot_push_rounded_clip" (iptr iptr) void))
  ;;
  (define gtk-snapshot-push-shadow
    (foreign-procedure "gtk_snapshot_push_shadow" (iptr iptr int) void))
  ;;
  (define gtk-snapshot-render-background
    (foreign-procedure "gtk_snapshot_render_background"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-snapshot-render-focus
    (foreign-procedure "gtk_snapshot_render_focus"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-snapshot-render-frame
    (foreign-procedure "gtk_snapshot_render_frame"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-snapshot-render-insertion-cursor
    (foreign-procedure "gtk_snapshot_render_insertion_cursor"
		       (iptr iptr double double iptr int iptr) void))
  ;;
  (define gtk-snapshot-render-layout
    (foreign-procedure "gtk_snapshot_render_layout"
		       (iptr iptr double double iptr) void))
  ;;
  (define gtk-snapshot-restore
    (foreign-procedure "gtk_snapshot_restore" (iptr) void))
  ;;
  (define gtk-snapshot-rotate
    (foreign-procedure "gtk_snapshot_rotate" (iptr float) void))
  ;;
  (define gtk-snapshot-rotate-3d
    (foreign-procedure "gtk_snapshot_rotate_3d" (iptr float iptr) void))
  ;;
  (define gtk-snapshot-save
    (foreign-procedure "gtk_snapshot_save" (iptr) void))
  ;;
  (define gtk-snapshot-scale
    (foreign-procedure "gtk_snapshot_scale" (iptr float float) void))
  ;;
  (define gtk-snapshot-scale-3d
    (foreign-procedure "gtk_snapshot_scale_3d" (iptr float float float) void))
  ;;
  (define gtk-snapshot-to-node
    (foreign-procedure "gtk_snapshot_to_node" (iptr) iptr))
  ;;
  (define gtk-snapshot-to-paintable
    (foreign-procedure "gtk_snapshot_to_paintable" (iptr iptr) iptr))
  ;;
  (define gtk-snapshot-transform
    (foreign-procedure "gtk_snapshot_transform" (iptr iptr) void))
  ;;
  (define gtk-snapshot-transform-matrix
    (foreign-procedure "gtk_snapshot_transform_matrix" (iptr iptr) void))
  ;;
  (define gtk-snapshot-translate
    (foreign-procedure "gtk_snapshot_translate" (iptr iptr) void))
  ;;
  (define gtk-snapshot-translate-3d
    (foreign-procedure "gtk_snapshot_translate_3d" (iptr iptr) void))
  ;;
  (define gtk-sorter-changed
    (foreign-procedure "gtk_sorter_changed" (iptr iptr) void))
  ;;
  (define gtk-sorter-compare
    (foreign-procedure "gtk_sorter_compare" (iptr iptr iptr) iptr))
  ;;
  (define gtk-sorter-get-order
    (foreign-procedure "gtk_sorter_get_order" (iptr) iptr))
  ;;
  (define gtk-sort-list-model-new
    (foreign-procedure "gtk_sort_list_model_new" (iptr iptr) iptr))
  ;;
  (define gtk-sort-list-model-get-incremental
    (foreign-procedure "gtk_sort_list_model_get_incremental" (iptr) int))
  ;;
  (define gtk-sort-list-model-get-model
    (foreign-procedure "gtk_sort_list_model_get_model" (iptr) iptr))
  ;;
  (define gtk-sort-list-model-get-pending
    (foreign-procedure "gtk_sort_list_model_get_pending" (iptr) int))
  ;;
  (define gtk-sort-list-model-get-sorter
    (foreign-procedure "gtk_sort_list_model_get_sorter" (iptr) iptr))
  ;;
  (define gtk-sort-list-model-set-incremental
    (foreign-procedure "gtk_sort_list_model_set_incremental" (iptr int) void))
  ;;
  (define gtk-sort-list-model-set-model
    (foreign-procedure "gtk_sort_list_model_set_model" (iptr iptr) void))
  ;;
  (define gtk-sort-list-model-set-sorter
    (foreign-procedure "gtk_sort_list_model_set_sorter" (iptr iptr) void))
  ;;
  (define gtk-spin-button-new
    (foreign-procedure "gtk_spin_button_new" (iptr double int) iptr))
  ;;
  (define gtk-spin-button-new-with-range
    (foreign-procedure "gtk_spin_button_new_with_range"
		       (double double double) iptr))
  ;;
  (define gtk-spin-button-configure
    (foreign-procedure "gtk_spin_button_configure" (iptr iptr double int) void))
  ;;
  (define gtk-spin-button-get-adjustment
    (foreign-procedure "gtk_spin_button_get_adjustment" (iptr) iptr))
  ;;
  (define gtk-spin-button-get-climb-rate
    (foreign-procedure "gtk_spin_button_get_climb_rate" (iptr) double))
  ;;
  (define gtk-spin-button-get-digits
    (foreign-procedure "gtk_spin_button_get_digits" (iptr) int))
  ;;
  (define gtk-spin-button-get-increments
    (foreign-procedure "gtk_spin_button_get_increments"
		       (iptr double double) void))
  ;;
  (define gtk-spin-button-get-numeric
    (foreign-procedure "gtk_spin_button_get_numeric" (iptr) int))
  ;;
  (define gtk-spin-button-get-range
    (foreign-procedure "gtk_spin_button_get_range" (iptr double double) void))
  ;;
  (define gtk-spin-button-get-snap-to-ticks
    (foreign-procedure "gtk_spin_button_get_snap_to_ticks" (iptr) int))
  ;;
  (define gtk-spin-button-get-update-policy
    (foreign-procedure "gtk_spin_button_get_update_policy" (iptr) iptr))
  ;;
  (define gtk-spin-button-get-value
    (foreign-procedure "gtk_spin_button_get_value" (iptr) double))
  ;;
  (define gtk-spin-button-get-value-as-int
    (foreign-procedure "gtk_spin_button_get_value_as_int" (iptr) int))
  ;;
  (define gtk-spin-button-get-wrap
    (foreign-procedure "gtk_spin_button_get_wrap" (iptr) int))
  ;;
  (define gtk-spin-button-set-adjustment
    (foreign-procedure "gtk_spin_button_set_adjustment" (iptr iptr) void))
  ;;
  (define gtk-spin-button-set-climb-rate
    (foreign-procedure "gtk_spin_button_set_climb_rate" (iptr double) void))
  ;;
  (define gtk-spin-button-set-digits
    (foreign-procedure "gtk_spin_button_set_digits" (iptr int) void))
  ;;
  (define gtk-spin-button-set-increments
    (foreign-procedure "gtk_spin_button_set_increments"
		       (iptr double double) void))
  ;;
  (define gtk-spin-button-set-numeric
    (foreign-procedure "gtk_spin_button_set_numeric" (iptr int) void))
  ;;
  (define gtk-spin-button-set-range
    (foreign-procedure "gtk_spin_button_set_range" (iptr double double) void))
  ;;
  (define gtk-spin-button-set-snap-to-ticks
    (foreign-procedure "gtk_spin_button_set_snap_to_ticks" (iptr int) void))
  ;;
  (define gtk-spin-button-set-update-policy
    (foreign-procedure "gtk_spin_button_set_update_policy" (iptr iptr) void))
  ;;
  (define gtk-spin-button-set-value
    (foreign-procedure "gtk_spin_button_set_value" (iptr double) void))
  ;;
  (define gtk-spin-button-set-wrap
    (foreign-procedure "gtk_spin_button_set_wrap" (iptr int) void))
  ;;
  (define gtk-spin-button-spin
    (foreign-procedure "gtk_spin_button_spin" (iptr iptr double) void))
  ;;
  (define gtk-spin-button-update
    (foreign-procedure "gtk_spin_button_update" (iptr) void))
  ;;
  (define gtk-spinner-new
    (foreign-procedure "gtk_spinner_new" () iptr))
  ;;
  (define gtk-spinner-get-spinning
    (foreign-procedure "gtk_spinner_get_spinning" (iptr) int))
  ;;
  (define gtk-spinner-set-spinning
    (foreign-procedure "gtk_spinner_set_spinning" (iptr int) void))
  ;;
  (define gtk-spinner-start
    (foreign-procedure "gtk_spinner_start" (iptr) void))
  ;;
  (define gtk-spinner-stop
    (foreign-procedure "gtk_spinner_stop" (iptr) void))
  ;;
  (define gtk-stack-new
    (foreign-procedure "gtk_stack_new" () iptr))
  ;;
  (define gtk-stack-add-child
    (foreign-procedure "gtk_stack_add_child" (iptr iptr) iptr))
  ;;
  (define gtk-stack-add-named
    (foreign-procedure "gtk_stack_add_named" (iptr iptr string) iptr))
  ;;
  (define gtk-stack-add-titled
    (foreign-procedure "gtk_stack_add_titled" (iptr iptr string string) iptr))
  ;;
  (define gtk-stack-get-child-by-name
    (foreign-procedure "gtk_stack_get_child_by_name" (iptr string) iptr))
  ;;
  (define gtk-stack-get-hhomogeneous
    (foreign-procedure "gtk_stack_get_hhomogeneous" (iptr) int))
  ;;
  (define gtk-stack-get-interpolate-size
    (foreign-procedure "gtk_stack_get_interpolate_size" (iptr) int))
  ;;
  (define gtk-stack-get-page
    (foreign-procedure "gtk_stack_get_page" (iptr iptr) iptr))
  ;;
  (define gtk-stack-get-pages
    (foreign-procedure "gtk_stack_get_pages" (iptr) iptr))
  ;;
  (define gtk-stack-get-transition-duration
    (foreign-procedure "gtk_stack_get_transition_duration" (iptr) int))
  ;;
  (define gtk-stack-get-transition-running
    (foreign-procedure "gtk_stack_get_transition_running" (iptr) int))
  ;;
  (define gtk-stack-get-transition-type
    (foreign-procedure "gtk_stack_get_transition_type" (iptr) iptr))
  ;;
  (define gtk-stack-get-vhomogeneous
    (foreign-procedure "gtk_stack_get_vhomogeneous" (iptr) int))
  ;;
  (define gtk-stack-get-visible-child
    (foreign-procedure "gtk_stack_get_visible_child" (iptr) iptr))
  ;;
  (define gtk-stack-get-visible-child-name
    (foreign-procedure "gtk_stack_get_visible_child_name" (iptr) string))
  ;;
  (define gtk-stack-remove
    (foreign-procedure "gtk_stack_remove" (iptr iptr) void))
  ;;
  (define gtk-stack-set-hhomogeneous
    (foreign-procedure "gtk_stack_set_hhomogeneous" (iptr int) void))
  ;;
  (define gtk-stack-set-interpolate-size
    (foreign-procedure "gtk_stack_set_interpolate_size" (iptr int) void))
  ;;
  (define gtk-stack-set-transition-duration
    (foreign-procedure "gtk_stack_set_transition_duration" (iptr int) void))
  ;;
  (define gtk-stack-set-transition-type
    (foreign-procedure "gtk_stack_set_transition_type" (iptr iptr) void))
  ;;
  (define gtk-stack-set-vhomogeneous
    (foreign-procedure "gtk_stack_set_vhomogeneous" (iptr int) void))
  ;;
  (define gtk-stack-set-visible-child
    (foreign-procedure "gtk_stack_set_visible_child" (iptr iptr) void))
  ;;
  (define gtk-stack-set-visible-child-full
    (foreign-procedure "gtk_stack_set_visible_child_full"
		       (iptr string iptr) void))
  ;;
  (define gtk-stack-set-visible-child-name
    (foreign-procedure "gtk_stack_set_visible_child_name" (iptr string) void))
  ;;
  (define gtk-stack-page-get-child
    (foreign-procedure "gtk_stack_page_get_child" (iptr) iptr))
  ;;
  (define gtk-stack-page-get-icon-name
    (foreign-procedure "gtk_stack_page_get_icon_name" (iptr) string))
  ;;
  (define gtk-stack-page-get-name
    (foreign-procedure "gtk_stack_page_get_name" (iptr) string))
  ;;
  (define gtk-stack-page-get-needs-attention
    (foreign-procedure "gtk_stack_page_get_needs_attention" (iptr) int))
  ;;
  (define gtk-stack-page-get-title
    (foreign-procedure "gtk_stack_page_get_title" (iptr) string))
  ;;
  (define gtk-stack-page-get-use-underline
    (foreign-procedure "gtk_stack_page_get_use_underline" (iptr) int))
  ;;
  (define gtk-stack-page-get-visible
    (foreign-procedure "gtk_stack_page_get_visible" (iptr) int))
  ;;
  (define gtk-stack-page-set-icon-name
    (foreign-procedure "gtk_stack_page_set_icon_name" (iptr string) void))
  ;;
  (define gtk-stack-page-set-name
    (foreign-procedure "gtk_stack_page_set_name" (iptr string) void))
  ;;
  (define gtk-stack-page-set-needs-attention
    (foreign-procedure "gtk_stack_page_set_needs_attention" (iptr int) void))
  ;;
  (define gtk-stack-page-set-title
    (foreign-procedure "gtk_stack_page_set_title" (iptr string) void))
  ;;
  (define gtk-stack-page-set-use-underline
    (foreign-procedure "gtk_stack_page_set_use_underline" (iptr int) void))
  ;;
  (define gtk-stack-page-set-visible
    (foreign-procedure "gtk_stack_page_set_visible" (iptr int) void))
  ;;
  (define gtk-stack-sidebar-new
    (foreign-procedure "gtk_stack_sidebar_new" () iptr))
  ;;
  (define gtk-stack-sidebar-get-stack
    (foreign-procedure "gtk_stack_sidebar_get_stack" (iptr) iptr))
  ;;
  (define gtk-stack-sidebar-set-stack
    (foreign-procedure "gtk_stack_sidebar_set_stack" (iptr iptr) void))
  ;;
  (define gtk-stack-switcher-new
    (foreign-procedure "gtk_stack_switcher_new" () iptr))
  ;;
  (define gtk-stack-switcher-get-stack
    (foreign-procedure "gtk_stack_switcher_get_stack" (iptr) iptr))
  ;;
  (define gtk-stack-switcher-set-stack
    (foreign-procedure "gtk_stack_switcher_set_stack" (iptr iptr) void))
  ;;
  (define gtk-statusbar-new
    (foreign-procedure "gtk_statusbar_new" () iptr))
  ;;
  (define gtk-statusbar-get-context-id
    (foreign-procedure "gtk_statusbar_get_context_id" (iptr string) int))
  ;;
  (define gtk-statusbar-pop
    (foreign-procedure "gtk_statusbar_pop" (iptr int) void))
  ;;
  (define gtk-statusbar-push
    (foreign-procedure "gtk_statusbar_push" (iptr string) int))
  ;;
  (define gtk-statusbar-remove
    (foreign-procedure "gtk_statusbar_remove" (iptr int int) void))
  ;;
  (define gtk-statusbar-remove-all
    (foreign-procedure "gtk_statusbar_remove_all" (iptr int) void))
  ;;
  (define gtk-string-filter-new
    (foreign-procedure "gtk_string_filter_new" (iptr) iptr))
  ;;
  (define gtk-string-filter-get-expression
    (foreign-procedure "gtk_string_filter_get_expression" (iptr) iptr))
  ;;
  (define gtk-string-filter-get-ignore-case
    (foreign-procedure "gtk_string_filter_get_ignore_case" (iptr) int))
  ;;
  (define gtk-string-filter-get-match-mode
    (foreign-procedure "gtk_string_filter_get_match_mode" (iptr) iptr))
  ;;
  (define gtk-string-filter-get-search
    (foreign-procedure "gtk_string_filter_get_search" (iptr) string))
  ;;
  (define gtk-string-filter-set-expression
    (foreign-procedure "gtk_string_filter_set_expression" (iptr iptr) void))
  ;;
  (define gtk-string-filter-set-ignore-case
    (foreign-procedure "gtk_string_filter_set_ignore_case" (iptr int) void))
  ;;
  (define gtk-string-filter-set-match-mode
    (foreign-procedure "gtk_string_filter_set_match_mode" (iptr iptr) void))
  ;;
  (define gtk-string-filter-set-search
    (foreign-procedure "gtk_string_filter_set_search" (iptr string) void))
  ;;
  (define gtk-string-list-new
    (foreign-procedure "gtk_string_list_new" (string) iptr))
  ;;
  (define gtk-string-list-append
    (foreign-procedure "gtk_string_list_append" (iptr string) void))
  ;;
  (define gtk-string-list-get-string
    (foreign-procedure "gtk_string_list_get_string" (iptr int) string))
  ;;
  (define gtk-string-list-remove
    (foreign-procedure "gtk_string_list_remove" (iptr int) void))
  ;;
  (define gtk-string-list-splice
    (foreign-procedure "gtk_string_list_splice" (iptr int int string) void))
  ;;
  (define gtk-string-list-take
    (foreign-procedure "gtk_string_list_take" (iptr string) void))
  ;;
  (define gtk-string-object-new
    (foreign-procedure "gtk_string_object_new" (string) iptr))
  ;;
  (define gtk-string-object-get-string
    (foreign-procedure "gtk_string_object_get_string" (iptr) string))
  ;;
  (define gtk-string-sorter-new
    (foreign-procedure "gtk_string_sorter_new" (iptr) iptr))
  ;;
  (define gtk-string-sorter-get-expression
    (foreign-procedure "gtk_string_sorter_get_expression" (iptr) iptr))
  ;;
  (define gtk-string-sorter-get-ignore-case
    (foreign-procedure "gtk_string_sorter_get_ignore_case" (iptr) int))
  ;;
  (define gtk-string-sorter-set-expression
    (foreign-procedure "gtk_string_sorter_set_expression" (iptr iptr) void))
  ;;
  (define gtk-string-sorter-set-ignore-case
    (foreign-procedure "gtk_string_sorter_set_ignore_case" (iptr int) void))
  ;;
  (define gtk-style-context-add-provider-for-display
    (foreign-procedure "gtk_style_context_add_provider_for_display"
		       (iptr iptr int) void))
  ;;
  (define gtk-style-context-remove-provider-for-display
    (foreign-procedure "gtk_style_context_remove_provider_for_display"
		       (iptr iptr) void))
  ;;
  (define gtk-style-context-add-class
    (foreign-procedure "gtk_style_context_add_class" (iptr string) void))
  ;;
  (define gtk-style-context-add-provider
    (foreign-procedure "gtk_style_context_add_provider" (iptr iptr int) void))
  ;;
  (define gtk-style-context-get-border
    (foreign-procedure "gtk_style_context_get_border" (iptr iptr) void))
  ;;
  (define gtk-style-context-get-color
    (foreign-procedure "gtk_style_context_get_color" (iptr iptr) void))
  ;;
  (define gtk-style-context-get-display
    (foreign-procedure "gtk_style_context_get_display" (iptr) iptr))
  ;;
  (define gtk-style-context-get-margin
    (foreign-procedure "gtk_style_context_get_margin" (iptr iptr) void))
  ;;
  (define gtk-style-context-get-padding
    (foreign-procedure "gtk_style_context_get_padding" (iptr iptr) void))
  ;;
  (define gtk-style-context-get-scale
    (foreign-procedure "gtk_style_context_get_scale" (iptr) int))
  ;;
  (define gtk-style-context-get-state
    (foreign-procedure "gtk_style_context_get_state" (iptr) iptr))
  ;;
  (define gtk-style-context-has-class
    (foreign-procedure "gtk_style_context_has_class" (iptr string) int))
  ;;
  (define gtk-style-context-lookup-color
    (foreign-procedure "gtk_style_context_lookup_color" (iptr string iptr) int))
  ;;
  (define gtk-style-context-remove-class
    (foreign-procedure "gtk_style_context_remove_class" (iptr string) void))
  ;;
  (define gtk-style-context-remove-provider
    (foreign-procedure "gtk_style_context_remove_provider" (iptr iptr) void))
  ;;
  (define gtk-style-context-restore
    (foreign-procedure "gtk_style_context_restore" (iptr) void))
  ;;
  (define gtk-style-context-save
    (foreign-procedure "gtk_style_context_save" (iptr) void))
  ;;
  (define gtk-style-context-set-display
    (foreign-procedure "gtk_style_context_set_display" (iptr iptr) void))
  ;;
  (define gtk-style-context-set-scale
    (foreign-procedure "gtk_style_context_set_scale" (iptr int) void))
  ;;
  (define gtk-style-context-set-state
    (foreign-procedure "gtk_style_context_set_state" (iptr iptr) void))
  ;;
  (define gtk-style-context-to-string
    (foreign-procedure "gtk_style_context_to_string" (iptr iptr) string))
  ;;
  (define gtk-switch-new
    (foreign-procedure "gtk_switch_new" () iptr))
  ;;
  (define gtk-switch-get-active
    (foreign-procedure "gtk_switch_get_active" (iptr) int))
  ;;
  (define gtk-switch-get-state
    (foreign-procedure "gtk_switch_get_state" (iptr) int))
  ;;
  (define gtk-switch-set-active
    (foreign-procedure "gtk_switch_set_active" (iptr int) void))
  ;;
  (define gtk-switch-set-state
    (foreign-procedure "gtk_switch_set_state" (iptr int) void))
  ;;
  (define gtk-text-new
    (foreign-procedure "gtk_text_new" () iptr))
  ;;
  (define gtk-text-new-with-buffer
    (foreign-procedure "gtk_text_new_with_buffer" (iptr) iptr))
  ;;
  (define gtk-text-compute-cursor-extents
    (foreign-procedure "gtk_text_compute_cursor_extents"
		       (iptr int iptr iptr) void))
  ;;
  (define gtk-text-get-activates-default
    (foreign-procedure "gtk_text_get_activates_default" (iptr) int))
  ;;
  (define gtk-text-get-attributes
    (foreign-procedure "gtk_text_get_attributes" (iptr) iptr))
  ;;
  (define gtk-text-get-buffer
    (foreign-procedure "gtk_text_get_buffer" (iptr) iptr))
  ;;
  (define gtk-text-get-enable-emoji-completion
    (foreign-procedure "gtk_text_get_enable_emoji_completion" (iptr) int))
  ;;
  (define gtk-text-get-extra-menu
    (foreign-procedure "gtk_text_get_extra_menu" (iptr) iptr))
  ;;
  (define gtk-text-get-input-hints
    (foreign-procedure "gtk_text_get_input_hints" (iptr) iptr))
  ;;
  (define gtk-text-get-input-purpose
    (foreign-procedure "gtk_text_get_input_purpose" (iptr) iptr))
  ;;
  (define gtk-text-get-invisible-char
    (foreign-procedure "gtk_text_get_invisible_char" (iptr) int))
  ;;
  (define gtk-text-get-max-length
    (foreign-procedure "gtk_text_get_max_length" (iptr) int))
  ;;
  (define gtk-text-get-overwrite-mode
    (foreign-procedure "gtk_text_get_overwrite_mode" (iptr) int))
  ;;
  (define gtk-text-get-placeholder-text
    (foreign-procedure "gtk_text_get_placeholder_text" (iptr) string))
  ;;
  (define gtk-text-get-propagate-text-width
    (foreign-procedure "gtk_text_get_propagate_text_width" (iptr) int))
  ;;
  (define gtk-text-get-tabs
    (foreign-procedure "gtk_text_get_tabs" (iptr) iptr))
  ;;
  (define gtk-text-get-text-length
    (foreign-procedure "gtk_text_get_text_length" (iptr) int))
  ;;
  (define gtk-text-get-truncate-multiline
    (foreign-procedure "gtk_text_get_truncate_multiline" (iptr) int))
  ;;
  (define gtk-text-get-visibility
    (foreign-procedure "gtk_text_get_visibility" (iptr) int))
  ;;
  (define gtk-text-grab-focus-without-selecting
    (foreign-procedure "gtk_text_grab_focus_without_selecting" (iptr) int))
  ;;
  (define gtk-text-set-activates-default
    (foreign-procedure "gtk_text_set_activates_default" (iptr int) void))
  ;;
  (define gtk-text-set-attributes
    (foreign-procedure "gtk_text_set_attributes" (iptr iptr) void))
  ;;
  (define gtk-text-set-buffer
    (foreign-procedure "gtk_text_set_buffer" (iptr iptr) void))
  ;;
  (define gtk-text-set-enable-emoji-completion
    (foreign-procedure "gtk_text_set_enable_emoji_completion" (iptr int) void))
  ;;
  (define gtk-text-set-extra-menu
    (foreign-procedure "gtk_text_set_extra_menu" (iptr iptr) void))
  ;;
  (define gtk-text-set-input-hints
    (foreign-procedure "gtk_text_set_input_hints" (iptr iptr) void))
  ;;
  (define gtk-text-set-input-purpose
    (foreign-procedure "gtk_text_set_input_purpose" (iptr iptr) void))
  ;;
  (define gtk-text-set-invisible-char
    (foreign-procedure "gtk_text_set_invisible_char" (iptr int) void))
  ;;
  (define gtk-text-set-max-length
    (foreign-procedure "gtk_text_set_max_length" (iptr int) void))
  ;;
  (define gtk-text-set-overwrite-mode
    (foreign-procedure "gtk_text_set_overwrite_mode" (iptr int) void))
  ;;
  (define gtk-text-set-placeholder-text
    (foreign-procedure "gtk_text_set_placeholder_text" (iptr string) void))
  ;;
  (define gtk-text-set-propagate-text-width
    (foreign-procedure "gtk_text_set_propagate_text_width" (iptr int) void))
  ;;
  (define gtk-text-set-tabs
    (foreign-procedure "gtk_text_set_tabs" (iptr iptr) void))
  ;;
  (define gtk-text-set-truncate-multiline
    (foreign-procedure "gtk_text_set_truncate_multiline" (iptr int) void))
  ;;
  (define gtk-text-set-visibility
    (foreign-procedure "gtk_text_set_visibility" (iptr int) void))
  ;;
  (define gtk-text-unset-invisible-char
    (foreign-procedure "gtk_text_unset_invisible_char" (iptr) void))
  ;;
  (define gtk-text-buffer-new
    (foreign-procedure "gtk_text_buffer_new" (iptr) iptr))
  ;;
  (define gtk-text-buffer-add-mark
    (foreign-procedure "gtk_text_buffer_add_mark" (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-add-selection-clipboard
    (foreign-procedure "gtk_text_buffer_add_selection_clipboard"
		       (iptr iptr) void))
  ;;
  (define gtk-text-buffer-apply-tag
    (foreign-procedure "gtk_text_buffer_apply_tag" (iptr iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-apply-tag-by-name
    (foreign-procedure "gtk_text_buffer_apply_tag_by_name"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-backspace
    (foreign-procedure "gtk_text_buffer_backspace" (iptr iptr int int) int))
  ;;
  (define gtk-text-buffer-begin-irreversible-action
    (foreign-procedure "gtk_text_buffer_begin_irreversible_action" (iptr) void))
  ;;
  (define gtk-text-buffer-begin-user-action
    (foreign-procedure "gtk_text_buffer_begin_user_action" (iptr) void))
  ;;
  (define gtk-text-buffer-copy-clipboard
    (foreign-procedure "gtk_text_buffer_copy_clipboard" (iptr iptr) void))
  ;;
  (define gtk-text-buffer-create-child-anchor
    (foreign-procedure "gtk_text_buffer_create_child_anchor" (iptr iptr) iptr))
  ;;
  (define gtk-text-buffer-create-mark
    (foreign-procedure "gtk_text_buffer_create_mark"
		       (iptr string iptr int) iptr))
  ;;
  (define gtk-text-buffer-create-tag
    (foreign-procedure "gtk_text_buffer_create_tag" (iptr string string) iptr))
  ;;
  (define gtk-text-buffer-cut-clipboard
    (foreign-procedure "gtk_text_buffer_cut_clipboard" (iptr iptr int) void))
  ;;
  (define gtk-text-buffer-delete
    (foreign-procedure "gtk_text_buffer_delete" (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-delete-interactive
    (foreign-procedure "gtk_text_buffer_delete_interactive"
		       (iptr iptr iptr int) int))
  ;;
  (define gtk-text-buffer-delete-mark
    (foreign-procedure "gtk_text_buffer_delete_mark" (iptr iptr) void))
  ;;
  (define gtk-text-buffer-delete-mark-by-name
    (foreign-procedure "gtk_text_buffer_delete_mark_by_name"
		       (iptr string) void))
  ;;
  (define gtk-text-buffer-delete-selection
    (foreign-procedure "gtk_text_buffer_delete_selection" (iptr int int) int))
  ;;
  (define gtk-text-buffer-end-irreversible-action
    (foreign-procedure "gtk_text_buffer_end_irreversible_action" (iptr) void))
  ;;
  (define gtk-text-buffer-end-user-action
    (foreign-procedure "gtk_text_buffer_end_user_action" (iptr) void))
  ;;
  (define gtk-text-buffer-get-bounds
    (foreign-procedure "gtk_text_buffer_get_bounds" (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-get-can-redo
    (foreign-procedure "gtk_text_buffer_get_can_redo" (iptr) int))
  ;;
  (define gtk-text-buffer-get-can-undo
    (foreign-procedure "gtk_text_buffer_get_can_undo" (iptr) int))
  ;;
  (define gtk-text-buffer-get-char-count
    (foreign-procedure "gtk_text_buffer_get_char_count" (iptr) int))
  ;;
  (define gtk-text-buffer-get-enable-undo
    (foreign-procedure "gtk_text_buffer_get_enable_undo" (iptr) int))
  ;;
  (define gtk-text-buffer-get-end-iter
    (foreign-procedure "gtk_text_buffer_get_end_iter" (iptr iptr) void))
  ;;
  (define gtk-text-buffer-get-has-selection
    (foreign-procedure "gtk_text_buffer_get_has_selection" (iptr) int))
  ;;
  (define gtk-text-buffer-get-insert
    (foreign-procedure "gtk_text_buffer_get_insert" (iptr) iptr))
  ;;
  (define gtk-text-buffer-get-iter-at-child-anchor
    (foreign-procedure "gtk_text_buffer_get_iter_at_child_anchor"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-get-iter-at-line
    (foreign-procedure "gtk_text_buffer_get_iter_at_line" (iptr iptr int) int))
  ;;
  (define gtk-text-buffer-get-iter-at-line-index
    (foreign-procedure "gtk_text_buffer_get_iter_at_line_index"
		       (iptr iptr int int) int))
  ;;
  (define gtk-text-buffer-get-iter-at-line-offset
    (foreign-procedure "gtk_text_buffer_get_iter_at_line_offset"
		       (iptr iptr int int) int))
  ;;
  (define gtk-text-buffer-get-iter-at-mark
    (foreign-procedure "gtk_text_buffer_get_iter_at_mark"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-get-iter-at-offset
    (foreign-procedure "gtk_text_buffer_get_iter_at_offset"
		       (iptr iptr int) void))
  ;;
  (define gtk-text-buffer-get-line-count
    (foreign-procedure "gtk_text_buffer_get_line_count" (iptr) int))
  ;;
  (define gtk-text-buffer-get-mark
    (foreign-procedure "gtk_text_buffer_get_mark" (iptr string) iptr))
  ;;
  (define gtk-text-buffer-get-max-undo-levels
    (foreign-procedure "gtk_text_buffer_get_max_undo_levels" (iptr) int))
  ;;
  (define gtk-text-buffer-get-modified
    (foreign-procedure "gtk_text_buffer_get_modified" (iptr) int))
  ;;
  (define gtk-text-buffer-get-selection-bound
    (foreign-procedure "gtk_text_buffer_get_selection_bound" (iptr) iptr))
  ;;
  (define gtk-text-buffer-get-selection-bounds
    (foreign-procedure "gtk_text_buffer_get_selection_bounds"
		       (iptr iptr iptr) int))
  ;;
  (define gtk-text-buffer-get-selection-content
    (foreign-procedure "gtk_text_buffer_get_selection_content" (iptr) iptr))
  ;;
  (define gtk-text-buffer-get-slice
    (foreign-procedure "gtk_text_buffer_get_slice" (iptr iptr iptr int) string))
  ;;
  (define gtk-text-buffer-get-start-iter
    (foreign-procedure "gtk_text_buffer_get_start_iter" (iptr iptr) void))
  ;;
  (define gtk-text-buffer-get-tag-table
    (foreign-procedure "gtk_text_buffer_get_tag_table" (iptr) iptr))
  ;;
  (define gtk-text-buffer-get-text
    (foreign-procedure "gtk_text_buffer_get_text" (iptr iptr iptr int) string))
  ;;
  (define gtk-text-buffer-insert
    (foreign-procedure "gtk_text_buffer_insert" (iptr iptr string int) void))
  ;;
  (define gtk-text-buffer-insert-at-cursor
    (foreign-procedure "gtk_text_buffer_insert_at_cursor"
		       (iptr string int) void))
  ;;
  (define gtk-text-buffer-insert-child-anchor
    (foreign-procedure "gtk_text_buffer_insert_child_anchor"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-insert-interactive
    (foreign-procedure "gtk_text_buffer_insert_interactive"
		       (iptr iptr string int int) int))
  ;;
  (define gtk-text-buffer-insert-markup
    (foreign-procedure "gtk_text_buffer_insert_markup"
		       (iptr iptr string int) void))
  ;;
  (define gtk-text-buffer-insert-paintable
    (foreign-procedure "gtk_text_buffer_insert_paintable"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-insert-range
    (foreign-procedure "gtk_text_buffer_insert_range"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-insert-range-interactive
    (foreign-procedure "gtk_text_buffer_insert_range_interactive"
		       (iptr iptr iptr iptr int) int))
  ;;
  (define gtk-text-buffer-insert-with-tags
    (foreign-procedure "gtk_text_buffer_insert_with_tags"
		       (iptr iptr string int iptr) void))
  ;;
  (define gtk-text-buffer-insert-with-tags-by-name
    (foreign-procedure "gtk_text_buffer_insert_with_tags_by_name"
		       (iptr iptr string int string) void))
  ;;
  (define gtk-text-buffer-move-mark
    (foreign-procedure "gtk_text_buffer_move_mark" (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-move-mark-by-name
    (foreign-procedure "gtk_text_buffer_move_mark_by_name"
		       (iptr string iptr) void))
  ;;
  (define gtk-text-buffer-paste-clipboard
    (foreign-procedure "gtk_text_buffer_paste_clipboard"
		       (iptr iptr iptr int) void))
  ;;
  (define gtk-text-buffer-place-cursor
    (foreign-procedure "gtk_text_buffer_place_cursor" (iptr iptr) void))
  ;;
  (define gtk-text-buffer-redo
    (foreign-procedure "gtk_text_buffer_redo" (iptr) void))
  ;;
  (define gtk-text-buffer-remove-all-tags
    (foreign-procedure "gtk_text_buffer_remove_all_tags" (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-remove-selection-clipboard
    (foreign-procedure "gtk_text_buffer_remove_selection_clipboard"
		       (iptr iptr) void))
  ;;
  (define gtk-text-buffer-remove-tag
    (foreign-procedure "gtk_text_buffer_remove_tag" (iptr iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-remove-tag-by-name
    (foreign-procedure "gtk_text_buffer_remove_tag_by_name"
		       (iptr string iptr iptr) void))
  ;;
  (define gtk-text-buffer-select-range
    (foreign-procedure "gtk_text_buffer_select_range" (iptr iptr iptr) void))
  ;;
  (define gtk-text-buffer-set-enable-undo
    (foreign-procedure "gtk_text_buffer_set_enable_undo" (iptr int) void))
  ;;
  (define gtk-text-buffer-set-max-undo-levels
    (foreign-procedure "gtk_text_buffer_set_max_undo_levels" (iptr int) void))
  ;;
  (define gtk-text-buffer-set-modified
    (foreign-procedure "gtk_text_buffer_set_modified" (iptr int) void))
  ;;
  (define gtk-text-buffer-set-text
    (foreign-procedure "gtk_text_buffer_set_text" (iptr string int) void))
  ;;
  (define gtk-text-buffer-undo
    (foreign-procedure "gtk_text_buffer_undo" (iptr) void))
  ;;
  (define gtk-text-child-anchor-new
    (foreign-procedure "gtk_text_child_anchor_new" () iptr))
  ;;
  (define gtk-text-child-anchor-get-deleted
    (foreign-procedure "gtk_text_child_anchor_get_deleted" (iptr) int))
  ;;
  (define gtk-text-child-anchor-get-widgets
    (foreign-procedure "gtk_text_child_anchor_get_widgets" (iptr int) iptr))
  ;;
  (define gtk-text-mark-new
    (foreign-procedure "gtk_text_mark_new" (string int) iptr))
  ;;
  (define gtk-text-mark-get-buffer
    (foreign-procedure "gtk_text_mark_get_buffer" (iptr) iptr))
  ;;
  (define gtk-text-mark-get-deleted
    (foreign-procedure "gtk_text_mark_get_deleted" (iptr) int))
  ;;
  (define gtk-text-mark-get-left-gravity
    (foreign-procedure "gtk_text_mark_get_left_gravity" (iptr) int))
  ;;
  (define gtk-text-mark-get-name
    (foreign-procedure "gtk_text_mark_get_name" (iptr) string))
  ;;
  (define gtk-text-mark-get-visible
    (foreign-procedure "gtk_text_mark_get_visible" (iptr) int))
  ;;
  (define gtk-text-mark-set-visible
    (foreign-procedure "gtk_text_mark_set_visible" (iptr int) void))
  ;;
  (define gtk-text-tag-new
    (foreign-procedure "gtk_text_tag_new" (string) iptr))
  ;;
  (define gtk-text-tag-changed
    (foreign-procedure "gtk_text_tag_changed" (iptr int) void))
  ;;
  (define gtk-text-tag-get-priority
    (foreign-procedure "gtk_text_tag_get_priority" (iptr) int))
  ;;
  (define gtk-text-tag-set-priority
    (foreign-procedure "gtk_text_tag_set_priority" (iptr int) void))
  ;;
  (define gtk-text-tag-table-new
    (foreign-procedure "gtk_text_tag_table_new" () iptr))
  ;;
  (define gtk-text-tag-table-add
    (foreign-procedure "gtk_text_tag_table_add" (iptr iptr) int))
  ;;
  (define gtk-text-tag-table-foreach
    (foreign-procedure "gtk_text_tag_table_foreach" (iptr iptr iptr) void))
  ;;
  (define gtk-text-tag-table-get-size
    (foreign-procedure "gtk_text_tag_table_get_size" (iptr) int))
  ;;
  (define gtk-text-tag-table-lookup
    (foreign-procedure "gtk_text_tag_table_lookup" (iptr string) iptr))
  ;;
  (define gtk-text-tag-table-remove
    (foreign-procedure "gtk_text_tag_table_remove" (iptr iptr) void))
  ;;
  (define gtk-text-view-new
    (foreign-procedure "gtk_text_view_new" () iptr))
  ;;
  (define gtk-text-view-new-with-buffer
    (foreign-procedure "gtk_text_view_new_with_buffer" (iptr) iptr))
  ;;
  (define gtk-text-view-add-child-at-anchor
    (foreign-procedure "gtk_text_view_add_child_at_anchor"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-text-view-add-overlay
    (foreign-procedure "gtk_text_view_add_overlay" (iptr iptr int int) void))
  ;;
  (define gtk-text-view-backward-display-line
    (foreign-procedure "gtk_text_view_backward_display_line" (iptr iptr) int))
  ;;
  (define gtk-text-view-backward-display-line-start
    (foreign-procedure "gtk_text_view_backward_display_line_start"
		       (iptr iptr) int))
  ;;
  (define gtk-text-view-buffer-to-window-coords
    (foreign-procedure "gtk_text_view_buffer_to_window_coords"
		       (iptr iptr int int int int) void))
  ;;
  (define gtk-text-view-forward-display-line
    (foreign-procedure "gtk_text_view_forward_display_line" (iptr iptr) int))
  ;;
  (define gtk-text-view-forward-display-line-end
    (foreign-procedure "gtk_text_view_forward_display_line_end"
		       (iptr iptr) int))
  ;;
  (define gtk-text-view-get-accepts-tab
    (foreign-procedure "gtk_text_view_get_accepts_tab" (iptr) int))
  ;;
  (define gtk-text-view-get-bottom-margin
    (foreign-procedure "gtk_text_view_get_bottom_margin" (iptr) int))
  ;;
  (define gtk-text-view-get-buffer
    (foreign-procedure "gtk_text_view_get_buffer" (iptr) iptr))
  ;;
  (define gtk-text-view-get-cursor-locations
    (foreign-procedure "gtk_text_view_get_cursor_locations"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-text-view-get-cursor-visible
    (foreign-procedure "gtk_text_view_get_cursor_visible" (iptr) int))
  ;;
  (define gtk-text-view-get-editable
    (foreign-procedure "gtk_text_view_get_editable" (iptr) int))
  ;;
  (define gtk-text-view-get-extra-menu
    (foreign-procedure "gtk_text_view_get_extra_menu" (iptr) iptr))
  ;;
  (define gtk-text-view-get-gutter
    (foreign-procedure "gtk_text_view_get_gutter" (iptr iptr) iptr))
  ;;
  (define gtk-text-view-get-indent
    (foreign-procedure "gtk_text_view_get_indent" (iptr) int))
  ;;
  (define gtk-text-view-get-input-hints
    (foreign-procedure "gtk_text_view_get_input_hints" (iptr) iptr))
  ;;
  (define gtk-text-view-get-input-purpose
    (foreign-procedure "gtk_text_view_get_input_purpose" (iptr) iptr))
  ;;
  (define gtk-text-view-get-iter-at-location
    (foreign-procedure "gtk_text_view_get_iter_at_location"
		       (iptr iptr int int) int))
  ;;
  (define gtk-text-view-get-iter-at-position
    (foreign-procedure "gtk_text_view_get_iter_at_position"
		       (iptr iptr int int int) int))
  ;;
  (define gtk-text-view-get-iter-location
    (foreign-procedure "gtk_text_view_get_iter_location"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-text-view-get-justification
    (foreign-procedure "gtk_text_view_get_justification" (iptr) iptr))
  ;;
  (define gtk-text-view-get-left-margin
    (foreign-procedure "gtk_text_view_get_left_margin" (iptr) int))
  ;;
  (define gtk-text-view-get-line-at-y
    (foreign-procedure "gtk_text_view_get_line_at_y" (iptr iptr int int) void))
  ;;
  (define gtk-text-view-get-line-yrange
    (foreign-procedure "gtk_text_view_get_line_yrange"
		       (iptr iptr int int) void))
  ;;
  (define gtk-text-view-get-ltr-context
    (foreign-procedure "gtk_text_view_get_ltr_context" (iptr) iptr))
  ;;
  (define gtk-text-view-get-monospace
    (foreign-procedure "gtk_text_view_get_monospace" (iptr) int))
  ;;
  (define gtk-text-view-get-overwrite
    (foreign-procedure "gtk_text_view_get_overwrite" (iptr) int))
  ;;
  (define gtk-text-view-get-pixels-above-lines
    (foreign-procedure "gtk_text_view_get_pixels_above_lines" (iptr) int))
  ;;
  (define gtk-text-view-get-pixels-below-lines
    (foreign-procedure "gtk_text_view_get_pixels_below_lines" (iptr) int))
  ;;
  (define gtk-text-view-get-pixels-inside-wrap
    (foreign-procedure "gtk_text_view_get_pixels_inside_wrap" (iptr) int))
  ;;
  (define gtk-text-view-get-right-margin
    (foreign-procedure "gtk_text_view_get_right_margin" (iptr) int))
  ;;
  (define gtk-text-view-get-rtl-context
    (foreign-procedure "gtk_text_view_get_rtl_context" (iptr) iptr))
  ;;
  (define gtk-text-view-get-tabs
    (foreign-procedure "gtk_text_view_get_tabs" (iptr) iptr))
  ;;
  (define gtk-text-view-get-top-margin
    (foreign-procedure "gtk_text_view_get_top_margin" (iptr) int))
  ;;
  (define gtk-text-view-get-visible-rect
    (foreign-procedure "gtk_text_view_get_visible_rect" (iptr iptr) void))
  ;;
  (define gtk-text-view-get-wrap-mode
    (foreign-procedure "gtk_text_view_get_wrap_mode" (iptr) iptr))
  ;;
  (define gtk-text-view-im-context-filter-keypress
    (foreign-procedure "gtk_text_view_im_context_filter_keypress"
		       (iptr iptr) int))
  ;;
  (define gtk-text-view-move-mark-onscreen
    (foreign-procedure "gtk_text_view_move_mark_onscreen" (iptr iptr) int))
  ;;
  (define gtk-text-view-move-overlay
    (foreign-procedure "gtk_text_view_move_overlay" (iptr iptr int int) void))
  ;;
  (define gtk-text-view-move-visually
    (foreign-procedure "gtk_text_view_move_visually" (iptr iptr int) int))
  ;;
  (define gtk-text-view-place-cursor-onscreen
    (foreign-procedure "gtk_text_view_place_cursor_onscreen" (iptr) int))
  ;;
  (define gtk-text-view-remove
    (foreign-procedure "gtk_text_view_remove" (iptr iptr) void))
  ;;
  (define gtk-text-view-reset-cursor-blink
    (foreign-procedure "gtk_text_view_reset_cursor_blink" (iptr) void))
  ;;
  (define gtk-text-view-reset-im-context
    (foreign-procedure "gtk_text_view_reset_im_context" (iptr) void))
  ;;
  (define gtk-text-view-scroll-mark-onscreen
    (foreign-procedure "gtk_text_view_scroll_mark_onscreen" (iptr iptr) void))
  ;;
  (define gtk-text-view-scroll-to-iter
    (foreign-procedure "gtk_text_view_scroll_to_iter"
		       (iptr iptr double int double double) int))
  ;;
  (define gtk-text-view-scroll-to-mark
    (foreign-procedure "gtk_text_view_scroll_to_mark"
		       (iptr iptr double int double double) void))
  ;;
  (define gtk-text-view-set-accepts-tab
    (foreign-procedure "gtk_text_view_set_accepts_tab" (iptr int) void))
  ;;
  (define gtk-text-view-set-bottom-margin
    (foreign-procedure "gtk_text_view_set_bottom_margin" (iptr int) void))
  ;;
  (define gtk-text-view-set-buffer
    (foreign-procedure "gtk_text_view_set_buffer" (iptr iptr) void))
  ;;
  (define gtk-text-view-set-cursor-visible
    (foreign-procedure "gtk_text_view_set_cursor_visible" (iptr int) void))
  ;;
  (define gtk-text-view-set-editable
    (foreign-procedure "gtk_text_view_set_editable" (iptr int) void))
  ;;
  (define gtk-text-view-set-extra-menu
    (foreign-procedure "gtk_text_view_set_extra_menu" (iptr iptr) void))
  ;;
  (define gtk-text-view-set-gutter
    (foreign-procedure "gtk_text_view_set_gutter" (iptr iptr iptr) void))
  ;;
  (define gtk-text-view-set-indent
    (foreign-procedure "gtk_text_view_set_indent" (iptr int) void))
  ;;
  (define gtk-text-view-set-input-hints
    (foreign-procedure "gtk_text_view_set_input_hints" (iptr iptr) void))
  ;;
  (define gtk-text-view-set-input-purpose
    (foreign-procedure "gtk_text_view_set_input_purpose" (iptr iptr) void))
  ;;
  (define gtk-text-view-set-justification
    (foreign-procedure "gtk_text_view_set_justification" (iptr iptr) void))
  ;;
  (define gtk-text-view-set-left-margin
    (foreign-procedure "gtk_text_view_set_left_margin" (iptr int) void))
  ;;
  (define gtk-text-view-set-monospace
    (foreign-procedure "gtk_text_view_set_monospace" (iptr int) void))
  ;;
  (define gtk-text-view-set-overwrite
    (foreign-procedure "gtk_text_view_set_overwrite" (iptr int) void))
  ;;
  (define gtk-text-view-set-pixels-above-lines
    (foreign-procedure "gtk_text_view_set_pixels_above_lines" (iptr int) void))
  ;;
  (define gtk-text-view-set-pixels-below-lines
    (foreign-procedure "gtk_text_view_set_pixels_below_lines" (iptr int) void))
  ;;
  (define gtk-text-view-set-pixels-inside-wrap
    (foreign-procedure "gtk_text_view_set_pixels_inside_wrap" (iptr int) void))
  ;;
  (define gtk-text-view-set-right-margin
    (foreign-procedure "gtk_text_view_set_right_margin" (iptr int) void))
  ;;
  (define gtk-text-view-set-tabs
    (foreign-procedure "gtk_text_view_set_tabs" (iptr iptr) void))
  ;;
  (define gtk-text-view-set-top-margin
    (foreign-procedure "gtk_text_view_set_top_margin" (iptr int) void))
  ;;
  (define gtk-text-view-set-wrap-mode
    (foreign-procedure "gtk_text_view_set_wrap_mode" (iptr iptr) void))
  ;;
  (define gtk-text-view-starts-display-line
    (foreign-procedure "gtk_text_view_starts_display_line" (iptr iptr) int))
  ;;
  (define gtk-text-view-window-to-buffer-coords
    (foreign-procedure "gtk_text_view_window_to_buffer_coords"
		       (iptr iptr int int int int) void))
  ;;
  (define gtk-toggle-button-new
    (foreign-procedure "gtk_toggle_button_new" () iptr))
  ;;
  (define gtk-toggle-button-new-with-label
    (foreign-procedure "gtk_toggle_button_new_with_label" (string) iptr))
  ;;
  (define gtk-toggle-button-new-with-mnemonic
    (foreign-procedure "gtk_toggle_button_new_with_mnemonic" (string) iptr))
  ;;
  (define gtk-toggle-button-get-active
    (foreign-procedure "gtk_toggle_button_get_active" (iptr) int))
  ;;
  (define gtk-toggle-button-set-active
    (foreign-procedure "gtk_toggle_button_set_active" (iptr int) void))
  ;;
  (define gtk-toggle-button-set-group
    (foreign-procedure "gtk_toggle_button_set_group" (iptr iptr) void))
  ;;
  (define gtk-toggle-button-toggled
    (foreign-procedure "gtk_toggle_button_toggled" (iptr) void))
  ;;
  (define gtk-tooltip-set-custom
    (foreign-procedure "gtk_tooltip_set_custom" (iptr iptr) void))
  ;;
  (define gtk-tooltip-set-icon
    (foreign-procedure "gtk_tooltip_set_icon" (iptr iptr) void))
  ;;
  (define gtk-tooltip-set-icon-from-gicon
    (foreign-procedure "gtk_tooltip_set_icon_from_gicon" (iptr iptr) void))
  ;;
  (define gtk-tooltip-set-icon-from-icon-name
    (foreign-procedure "gtk_tooltip_set_icon_from_icon_name"
		       (iptr string) void))
  ;;
  (define gtk-tooltip-set-markup
    (foreign-procedure "gtk_tooltip_set_markup" (iptr string) void))
  ;;
  (define gtk-tooltip-set-text
    (foreign-procedure "gtk_tooltip_set_text" (iptr string) void))
  ;;
  (define gtk-tooltip-set-tip-area
    (foreign-procedure "gtk_tooltip_set_tip_area" (iptr iptr) void))
  ;;
  (define gtk-tree-expander-new
    (foreign-procedure "gtk_tree_expander_new" () iptr))
  ;;
  (define gtk-tree-expander-get-child
    (foreign-procedure "gtk_tree_expander_get_child" (iptr) iptr))
  ;;
  (define gtk-tree-expander-get-item
    (foreign-procedure "gtk_tree_expander_get_item" (iptr) iptr))
  ;;
  (define gtk-tree-expander-get-list-row
    (foreign-procedure "gtk_tree_expander_get_list_row" (iptr) iptr))
  ;;
  (define gtk-tree-expander-set-child
    (foreign-procedure "gtk_tree_expander_set_child" (iptr iptr) void))
  ;;
  (define gtk-tree-expander-set-list-row
    (foreign-procedure "gtk_tree_expander_set_list_row" (iptr iptr) void))
  ;;
  (define gtk-tree-list-model-new
    (foreign-procedure "gtk_tree_list_model_new"
		       (iptr int int iptr iptr iptr) iptr))
  ;;
  (define gtk-tree-list-model-get-autoexpand
    (foreign-procedure "gtk_tree_list_model_get_autoexpand" (iptr) int))
  ;;
  (define gtk-tree-list-model-get-child-row
    (foreign-procedure "gtk_tree_list_model_get_child_row"
		       (iptr iptr) iptr))
  ;;
  (define gtk-tree-list-model-get-model
    (foreign-procedure "gtk_tree_list_model_get_model" (iptr) iptr))
  ;;
  (define gtk-tree-list-model-get-passthrough
    (foreign-procedure "gtk_tree_list_model_get_passthrough" (iptr) int))
  ;;
  (define gtk-tree-list-model-get-row
    (foreign-procedure "gtk_tree_list_model_get_row" (iptr int) iptr))
  ;;
  (define gtk-tree-list-model-set-autoexpand
    (foreign-procedure "gtk_tree_list_model_set_autoexpand" (iptr int) void))
  ;;
  (define gtk-tree-list-row-get-child-row
    (foreign-procedure "gtk_tree_list_row_get_child_row" (iptr int) iptr))
  ;;
  (define gtk-tree-list-row-get-children
    (foreign-procedure "gtk_tree_list_row_get_children" (iptr) iptr))
  ;;
  (define gtk-tree-list-row-get-depth
    (foreign-procedure "gtk_tree_list_row_get_depth" (iptr) int))
  ;;
  (define gtk-tree-list-row-get-expanded
    (foreign-procedure "gtk_tree_list_row_get_expanded" (iptr) int))
  ;;
  (define gtk-tree-list-row-get-item
    (foreign-procedure "gtk_tree_list_row_get_item" (iptr) iptr))
  ;;
  (define gtk-tree-list-row-get-parent
    (foreign-procedure "gtk_tree_list_row_get_parent" (iptr) iptr))
  ;;
  (define gtk-tree-list-row-get-position
    (foreign-procedure "gtk_tree_list_row_get_position" (iptr) int))
  ;;
  (define gtk-tree-list-row-is-expandable
    (foreign-procedure "gtk_tree_list_row_is_expandable" (iptr) int))
  ;;
  (define gtk-tree-list-row-set-expanded
    (foreign-procedure "gtk_tree_list_row_set_expanded" (iptr int) void))
  ;;
  (define gtk-tree-list-row-sorter-new
    (foreign-procedure "gtk_tree_list_row_sorter_new" (iptr) iptr))
  ;;
  (define gtk-tree-list-row-sorter-get-sorter
    (foreign-procedure "gtk_tree_list_row_sorter_get_sorter" (iptr) iptr))
  ;;
  (define gtk-tree-list-row-sorter-set-sorter
    (foreign-procedure "gtk_tree_list_row_sorter_set_sorter" (iptr iptr) void))
  ;;
  (define gtk-tree-model-filter-clear-cache
    (foreign-procedure "gtk_tree_model_filter_clear_cache" (iptr) void))
  ;;
  (define gtk-tree-model-filter-convert-child-iter-to-iter
    (foreign-procedure "gtk_tree_model_filter_convert_child_iter_to_iter"
		       (iptr iptr iptr) int))
  ;;
  (define gtk-tree-model-filter-convert-child-path-to-path
    (foreign-procedure "gtk_tree_model_filter_convert_child_path_to_path"
		       (iptr iptr) iptr))
  ;;
  (define gtk-tree-model-filter-convert-iter-to-child-iter
    (foreign-procedure "gtk_tree_model_filter_convert_iter_to_child_iter"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-tree-model-filter-convert-path-to-child-path
    (foreign-procedure "gtk_tree_model_filter_convert_path_to_child_path"
		       (iptr iptr) iptr))
  ;;
  (define gtk-tree-model-filter-get-model
    (foreign-procedure "gtk_tree_model_filter_get_model" (iptr) iptr))
  ;;
  (define gtk-tree-model-filter-refilter
    (foreign-procedure "gtk_tree_model_filter_refilter" (iptr) void))
  ;;
  (define gtk-tree-model-filter-set-modify-func
    (foreign-procedure "gtk_tree_model_filter_set_modify_func"
		       (iptr int iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-model-filter-set-visible-column
    (foreign-procedure "gtk_tree_model_filter_set_visible_column"
		       (iptr int) void))
  ;;
  (define gtk-tree-model-filter-set-visible-func
    (foreign-procedure "gtk_tree_model_filter_set_visible_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-model-sort-new-with-model
    (foreign-procedure "gtk_tree_model_sort_new_with_model" (iptr) iptr))
  ;;
  (define gtk-tree-model-sort-clear-cache
    (foreign-procedure "gtk_tree_model_sort_clear_cache" (iptr) void))
  ;;
  (define gtk-tree-model-sort-convert-child-iter-to-iter
    (foreign-procedure "gtk_tree_model_sort_convert_child_iter_to_iter"
		       (iptr iptr iptr) int))
  ;;
  (define gtk-tree-model-sort-convert-child-path-to-path
    (foreign-procedure "gtk_tree_model_sort_convert_child_path_to_path"
		       (iptr iptr) iptr))
  ;;
  (define gtk-tree-model-sort-convert-iter-to-child-iter
    (foreign-procedure "gtk_tree_model_sort_convert_iter_to_child_iter"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-tree-model-sort-convert-path-to-child-path
    (foreign-procedure "gtk_tree_model_sort_convert_path_to_child_path"
		       (iptr iptr) iptr))
  ;;
  (define gtk-tree-model-sort-get-model
    (foreign-procedure "gtk_tree_model_sort_get_model" (iptr) iptr))
  ;;
  (define gtk-tree-model-sort-reset-default-sort-func
    (foreign-procedure "gtk_tree_model_sort_reset_default_sort_func"
		       (iptr) void))
  ;;
  (define gtk-tree-selection-count-selected-rows
    (foreign-procedure "gtk_tree_selection_count_selected_rows" (iptr) int))
  ;;
  (define gtk-tree-selection-get-mode
    (foreign-procedure "gtk_tree_selection_get_mode" (iptr) iptr))
  ;;
  (define gtk-tree-selection-get-select-function
    (foreign-procedure "gtk_tree_selection_get_select_function" (iptr) iptr))
  ;;
  (define gtk-tree-selection-get-selected
    (foreign-procedure "gtk_tree_selection_get_selected" (iptr iptr iptr) int))
  ;;
  (define gtk-tree-selection-get-selected-rows
    (foreign-procedure "gtk_tree_selection_get_selected_rows" (iptr iptr) iptr))
  ;;
  (define gtk-tree-selection-get-tree-view
    (foreign-procedure "gtk_tree_selection_get_tree_view" (iptr) iptr))
  ;;
  (define gtk-tree-selection-get-user-data
    (foreign-procedure "gtk_tree_selection_get_user_data" (iptr) iptr))
  ;;
  (define gtk-tree-selection-iter-is-selected
    (foreign-procedure "gtk_tree_selection_iter_is_selected" (iptr iptr) int))
  ;;
  (define gtk-tree-selection-path-is-selected
    (foreign-procedure "gtk_tree_selection_path_is_selected" (iptr iptr) int))
  ;;
  (define gtk-tree-selection-select-all
    (foreign-procedure "gtk_tree_selection_select_all" (iptr) void))
  ;;
  (define gtk-tree-selection-select-iter
    (foreign-procedure "gtk_tree_selection_select_iter" (iptr iptr) void))
  ;;
  (define gtk-tree-selection-select-path
    (foreign-procedure "gtk_tree_selection_select_path" (iptr iptr) void))
  ;;
  (define gtk-tree-selection-select-range
    (foreign-procedure "gtk_tree_selection_select_range" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-selection-selected-foreach
    (foreign-procedure "gtk_tree_selection_selected_foreach"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-tree-selection-set-mode
    (foreign-procedure "gtk_tree_selection_set_mode" (iptr iptr) void))
  ;;
  (define gtk-tree-selection-set-select-function
    (foreign-procedure "gtk_tree_selection_set_select_function"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-selection-unselect-all
    (foreign-procedure "gtk_tree_selection_unselect_all" (iptr) void))
  ;;
  (define gtk-tree-selection-unselect-iter
    (foreign-procedure "gtk_tree_selection_unselect_iter" (iptr iptr) void))
  ;;
  (define gtk-tree-selection-unselect-path
    (foreign-procedure "gtk_tree_selection_unselect_path" (iptr iptr) void))
  ;;
  (define gtk-tree-selection-unselect-range
    (foreign-procedure "gtk_tree_selection_unselect_range"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-new
    (foreign-procedure "gtk_tree_store_new" (int) iptr))
  ;;
  (define gtk-tree-store-newv
    (foreign-procedure "gtk_tree_store_newv" (int iptr) iptr))
  ;;
  (define gtk-tree-store-append
    (foreign-procedure "gtk_tree_store_append" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-clear
    (foreign-procedure "gtk_tree_store_clear" (iptr) void))
  ;;
  (define gtk-tree-store-insert
    (foreign-procedure "gtk_tree_store_insert" (iptr iptr iptr int) void))
  ;;
  (define gtk-tree-store-insert-after
    (foreign-procedure "gtk_tree_store_insert_after"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-insert-before
    (foreign-procedure "gtk_tree_store_insert_before"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-insert-with-values
    (foreign-procedure "gtk_tree_store_insert_with_values"
		       (iptr iptr iptr int) void))
  ;;
  (define gtk-tree-store-insert-with-valuesv
    (foreign-procedure "gtk_tree_store_insert_with_valuesv"
		       (iptr iptr iptr int int iptr int) void))
  ;;
  (define gtk-tree-store-is-ancestor
    (foreign-procedure "gtk_tree_store_is_ancestor" (iptr iptr iptr) int))
  ;;
  (define gtk-tree-store-iter-depth
    (foreign-procedure "gtk_tree_store_iter_depth" (iptr iptr) int))
  ;;
  (define gtk-tree-store-iter-is-valid
    (foreign-procedure "gtk_tree_store_iter_is_valid" (iptr iptr) int))
  ;;
  (define gtk-tree-store-move-after
    (foreign-procedure "gtk_tree_store_move_after" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-move-before
    (foreign-procedure "gtk_tree_store_move_before" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-prepend
    (foreign-procedure "gtk_tree_store_prepend" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-remove
    (foreign-procedure "gtk_tree_store_remove" (iptr iptr) int))
  ;;
  (define gtk-tree-store-reorder
    (foreign-procedure "gtk_tree_store_reorder" (iptr iptr int) void))
  ;;
  (define gtk-tree-store-set
    (foreign-procedure "gtk_tree_store_set" (iptr iptr) void))
  ;;
  (define gtk-tree-store-set-column-types
    (foreign-procedure "gtk_tree_store_set_column_types" (iptr int iptr) void))
  ;;
  (define gtk-tree-store-set-valist
    (foreign-procedure "gtk_tree_store_set_valist" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-store-set-value
    (foreign-procedure "gtk_tree_store_set_value" (iptr iptr int iptr) void))
  ;;
  (define gtk-tree-store-set-valuesv
    (foreign-procedure "gtk_tree_store_set_valuesv"
		       (iptr iptr int iptr int) void))
  ;;
  (define gtk-tree-store-swap
    (foreign-procedure "gtk_tree_store_swap" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-new
    (foreign-procedure "gtk_tree_view_new" () iptr))
  ;;
  (define gtk-tree-view-new-with-model
    (foreign-procedure "gtk_tree_view_new_with_model" (iptr) iptr))
  ;;
  (define gtk-tree-view-append-column
    (foreign-procedure "gtk_tree_view_append_column" (iptr iptr) int))
  ;;
  (define gtk-tree-view-collapse-all
    (foreign-procedure "gtk_tree_view_collapse_all" (iptr) void))
  ;;
  (define gtk-tree-view-collapse-row
    (foreign-procedure "gtk_tree_view_collapse_row" (iptr iptr) int))
  ;;
  (define gtk-tree-view-columns-autosize
    (foreign-procedure "gtk_tree_view_columns_autosize" (iptr) void))
  ;;
  (define gtk-tree-view-convert-bin-window-to-tree-coords
    (foreign-procedure "gtk_tree_view_convert_bin_window_to_tree_coords"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-convert-bin-window-to-widget-coords
    (foreign-procedure "gtk_tree_view_convert_bin_window_to_widget_coords"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-convert-tree-to-bin-window-coords
    (foreign-procedure "gtk_tree_view_convert_tree_to_bin_window_coords"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-convert-tree-to-widget-coords
    (foreign-procedure "gtk_tree_view_convert_tree_to_widget_coords"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-convert-widget-to-bin-window-coords
    (foreign-procedure "gtk_tree_view_convert_widget_to_bin_window_coords"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-convert-widget-to-tree-coords
    (foreign-procedure "gtk_tree_view_convert_widget_to_tree_coords"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-create-row-drag-icon
    (foreign-procedure "gtk_tree_view_create_row_drag_icon" (iptr iptr) iptr))
  ;;
  (define gtk-tree-view-enable-model-drag-dest
    (foreign-procedure "gtk_tree_view_enable_model_drag_dest"
		       (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-enable-model-drag-source
    (foreign-procedure "gtk_tree_view_enable_model_drag_source"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-expand-all
    (foreign-procedure "gtk_tree_view_expand_all" (iptr) void))
  ;;
  (define gtk-tree-view-expand-row
    (foreign-procedure "gtk_tree_view_expand_row" (iptr iptr int) int))
  ;;
  (define gtk-tree-view-expand-to-path
    (foreign-procedure "gtk_tree_view_expand_to_path" (iptr iptr) void))
  ;;
  (define gtk-tree-view-get-activate-on-single-click
    (foreign-procedure "gtk_tree_view_get_activate_on_single_click" (iptr) int))
  ;;
  (define gtk-tree-view-get-background-area
    (foreign-procedure "gtk_tree_view_get_background_area"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-get-cell-area
    (foreign-procedure "gtk_tree_view_get_cell_area" (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-get-column
    (foreign-procedure "gtk_tree_view_get_column" (iptr int) iptr))
  ;;
  (define gtk-tree-view-get-columns
    (foreign-procedure "gtk_tree_view_get_columns" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-cursor
    (foreign-procedure "gtk_tree_view_get_cursor" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-get-dest-row-at-pos
    (foreign-procedure "gtk_tree_view_get_dest_row_at_pos"
		       (iptr int int iptr iptr) int))
  ;;
  (define gtk-tree-view-get-drag-dest-row
    (foreign-procedure "gtk_tree_view_get_drag_dest_row" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-get-enable-search
    (foreign-procedure "gtk_tree_view_get_enable_search" (iptr) int))
  ;;
  (define gtk-tree-view-get-enable-tree-lines
    (foreign-procedure "gtk_tree_view_get_enable_tree_lines" (iptr) int))
  ;;
  (define gtk-tree-view-get-expander-column
    (foreign-procedure "gtk_tree_view_get_expander_column" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-fixed-height-mode
    (foreign-procedure "gtk_tree_view_get_fixed_height_mode" (iptr) int))
  ;;
  (define gtk-tree-view-get-grid-lines
    (foreign-procedure "gtk_tree_view_get_grid_lines" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-headers-clickable
    (foreign-procedure "gtk_tree_view_get_headers_clickable" (iptr) int))
  ;;
  (define gtk-tree-view-get-headers-visible
    (foreign-procedure "gtk_tree_view_get_headers_visible" (iptr) int))
  ;;
  (define gtk-tree-view-get-hover-expand
    (foreign-procedure "gtk_tree_view_get_hover_expand" (iptr) int))
  ;;
  (define gtk-tree-view-get-hover-selection
    (foreign-procedure "gtk_tree_view_get_hover_selection" (iptr) int))
  ;;
  (define gtk-tree-view-get-level-indentation
    (foreign-procedure "gtk_tree_view_get_level_indentation" (iptr) int))
  ;;
  (define gtk-tree-view-get-model
    (foreign-procedure "gtk_tree_view_get_model" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-n-columns
    (foreign-procedure "gtk_tree_view_get_n_columns" (iptr) int))
  ;;
  (define gtk-tree-view-get-path-at-pos
    (foreign-procedure "gtk_tree_view_get_path_at_pos"
		       (iptr int int iptr iptr int int) int))
  ;;
  (define gtk-tree-view-get-reorderable
    (foreign-procedure "gtk_tree_view_get_reorderable" (iptr) int))
  ;;
  (define gtk-tree-view-get-row-separator-func
    (foreign-procedure "gtk_tree_view_get_row_separator_func" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-rubber-banding
    (foreign-procedure "gtk_tree_view_get_rubber_banding" (iptr) int))
  ;;
  (define gtk-tree-view-get-search-column
    (foreign-procedure "gtk_tree_view_get_search_column" (iptr) int))
  ;;
  (define gtk-tree-view-get-search-entry
    (foreign-procedure "gtk_tree_view_get_search_entry" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-search-equal-func
    (foreign-procedure "gtk_tree_view_get_search_equal_func" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-selection
    (foreign-procedure "gtk_tree_view_get_selection" (iptr) iptr))
  ;;
  (define gtk-tree-view-get-show-expanders
    (foreign-procedure "gtk_tree_view_get_show_expanders" (iptr) int))
  ;;
  (define gtk-tree-view-get-tooltip-column
    (foreign-procedure "gtk_tree_view_get_tooltip_column" (iptr) int))
  ;;
  (define gtk-tree-view-get-tooltip-context
    (foreign-procedure "gtk_tree_view_get_tooltip_context"
		       (iptr int int int iptr iptr iptr) int))
  ;;
  (define gtk-tree-view-get-visible-range
    (foreign-procedure "gtk_tree_view_get_visible_range" (iptr iptr iptr) int))
  ;;
  (define gtk-tree-view-get-visible-rect
    (foreign-procedure "gtk_tree_view_get_visible_rect" (iptr iptr) void))
  ;;
  (define gtk-tree-view-insert-column
    (foreign-procedure "gtk_tree_view_insert_column" (iptr iptr int) int))
  ;;
  (define gtk-tree-view-insert-column-with-attributes
    (foreign-procedure "gtk_tree_view_insert_column_with_attributes"
		       (iptr int string iptr) int))
  ;;
  (define gtk-tree-view-insert-column-with-data-func
    (foreign-procedure "gtk_tree_view_insert_column_with_data_func"
		       (iptr int string iptr iptr iptr iptr) int))
  ;;
  (define gtk-tree-view-is-blank-at-pos
    (foreign-procedure "gtk_tree_view_is_blank_at_pos"
		       (iptr int int iptr iptr int int) int))
  ;;
  (define gtk-tree-view-is-rubber-banding-active
    (foreign-procedure "gtk_tree_view_is_rubber_banding_active" (iptr) int))
  ;;
  (define gtk-tree-view-map-expanded-rows
    (foreign-procedure "gtk_tree_view_map_expanded_rows" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-move-column-after
    (foreign-procedure "gtk_tree_view_move_column_after" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-remove-column
    (foreign-procedure "gtk_tree_view_remove_column" (iptr iptr) int))
  ;;
  (define gtk-tree-view-row-activated
    (foreign-procedure "gtk_tree_view_row_activated" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-row-expanded
    (foreign-procedure "gtk_tree_view_row_expanded" (iptr iptr) int))
  ;;
  (define gtk-tree-view-scroll-to-cell
    (foreign-procedure "gtk_tree_view_scroll_to_cell"
		       (iptr iptr iptr int float float) void))
  ;;
  (define gtk-tree-view-scroll-to-point
    (foreign-procedure "gtk_tree_view_scroll_to_point" (iptr int int) void))
  ;;
  (define gtk-tree-view-set-activate-on-single-click
    (foreign-procedure "gtk_tree_view_set_activate_on_single_click"
		       (iptr int) void))
  ;;
  (define gtk-tree-view-set-column-drag-function
    (foreign-procedure "gtk_tree_view_set_column_drag_function"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-set-cursor
    (foreign-procedure "gtk_tree_view_set_cursor" (iptr iptr iptr int) void))
  ;;
  (define gtk-tree-view-set-cursor-on-cell
    (foreign-procedure "gtk_tree_view_set_cursor_on_cell"
		       (iptr iptr iptr iptr int) void))
  ;;
  (define gtk-tree-view-set-drag-dest-row
    (foreign-procedure "gtk_tree_view_set_drag_dest_row" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-set-enable-search
    (foreign-procedure "gtk_tree_view_set_enable_search" (iptr int) void))
  ;;
  (define gtk-tree-view-set-enable-tree-lines
    (foreign-procedure "gtk_tree_view_set_enable_tree_lines" (iptr int) void))
  ;;
  (define gtk-tree-view-set-expander-column
    (foreign-procedure "gtk_tree_view_set_expander_column" (iptr iptr) void))
  ;;
  (define gtk-tree-view-set-fixed-height-mode
    (foreign-procedure "gtk_tree_view_set_fixed_height_mode" (iptr int) void))
  ;;
  (define gtk-tree-view-set-grid-lines
    (foreign-procedure "gtk_tree_view_set_grid_lines" (iptr iptr) void))
  ;;
  (define gtk-tree-view-set-headers-clickable
    (foreign-procedure "gtk_tree_view_set_headers_clickable" (iptr int) void))
  ;;
  (define gtk-tree-view-set-headers-visible
    (foreign-procedure "gtk_tree_view_set_headers_visible" (iptr int) void))
  ;;
  (define gtk-tree-view-set-hover-expand
    (foreign-procedure "gtk_tree_view_set_hover_expand" (iptr int) void))
  ;;
  (define gtk-tree-view-set-hover-selection
    (foreign-procedure "gtk_tree_view_set_hover_selection" (iptr int) void))
  ;;
  (define gtk-tree-view-set-level-indentation
    (foreign-procedure "gtk_tree_view_set_level_indentation" (iptr int) void))
  ;;
  (define gtk-tree-view-set-model
    (foreign-procedure "gtk_tree_view_set_model" (iptr iptr) void))
  ;;
  (define gtk-tree-view-set-reorderable
    (foreign-procedure "gtk_tree_view_set_reorderable" (iptr int) void))
  ;;
  (define gtk-tree-view-set-row-separator-func
    (foreign-procedure "gtk_tree_view_set_row_separator_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-set-rubber-banding
    (foreign-procedure "gtk_tree_view_set_rubber_banding" (iptr int) void))
  ;;
  (define gtk-tree-view-set-search-column
    (foreign-procedure "gtk_tree_view_set_search_column" (iptr int) void))
  ;;
  (define gtk-tree-view-set-search-entry
    (foreign-procedure "gtk_tree_view_set_search_entry" (iptr iptr) void))
  ;;
  (define gtk-tree-view-set-search-equal-func
    (foreign-procedure "gtk_tree_view_set_search_equal_func"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-set-show-expanders
    (foreign-procedure "gtk_tree_view_set_show_expanders" (iptr int) void))
  ;;
  (define gtk-tree-view-set-tooltip-cell
    (foreign-procedure "gtk_tree_view_set_tooltip_cell"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-set-tooltip-column
    (foreign-procedure "gtk_tree_view_set_tooltip_column" (iptr int) void))
  ;;
  (define gtk-tree-view-set-tooltip-row
    (foreign-procedure "gtk_tree_view_set_tooltip_row" (iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-unset-rows-drag-dest
    (foreign-procedure "gtk_tree_view_unset_rows_drag_dest" (iptr) void))
  ;;
  (define gtk-tree-view-unset-rows-drag-source
    (foreign-procedure "gtk_tree_view_unset_rows_drag_source" (iptr) void))
  ;;
  (define gtk-tree-view-column-new
    (foreign-procedure "gtk_tree_view_column_new" () iptr))
  ;;
  (define gtk-tree-view-column-new-with-area
    (foreign-procedure "gtk_tree_view_column_new_with_area" (iptr) iptr))
  ;;
  (define gtk-tree-view-column-new-with-attributes
    (foreign-procedure "gtk_tree_view_column_new_with_attributes"
		       (string iptr) iptr))
  ;;
  (define gtk-tree-view-column-add-attribute
    (foreign-procedure "gtk_tree_view_column_add_attribute"
		       (iptr iptr string int) void))
  ;;
  (define gtk-tree-view-column-cell-get-position
    (foreign-procedure "gtk_tree_view_column_cell_get_position"
		       (iptr iptr int int) int))
  ;;
  (define gtk-tree-view-column-cell-get-size
    (foreign-procedure "gtk_tree_view_column_cell_get_size"
		       (iptr int int int int) void))
  ;;
  (define gtk-tree-view-column-cell-is-visible
    (foreign-procedure "gtk_tree_view_column_cell_is_visible" (iptr) int))
  ;;
  (define gtk-tree-view-column-cell-set-cell-data
    (foreign-procedure "gtk_tree_view_column_cell_set_cell_data"
		       (iptr iptr iptr int int) void))
  ;;
  (define gtk-tree-view-column-clear
    (foreign-procedure "gtk_tree_view_column_clear" (iptr) void))
  ;;
  (define gtk-tree-view-column-clear-attributes
    (foreign-procedure "gtk_tree_view_column_clear_attributes"
		       (iptr iptr) void))
  ;;
  (define gtk-tree-view-column-clicked
    (foreign-procedure "gtk_tree_view_column_clicked" (iptr) void))
  ;;
  (define gtk-tree-view-column-focus-cell
    (foreign-procedure "gtk_tree_view_column_focus_cell" (iptr iptr) void))
  ;;
  (define gtk-tree-view-column-get-alignment
    (foreign-procedure  "gtk_tree_view_column_get_alignment" (iptr) float))
  ;;
  (define gtk-tree-view-column-get-button
    (foreign-procedure "gtk_tree_view_column_get_button" (iptr) iptr))
  ;;
  (define gtk-tree-view-column-get-clickable
    (foreign-procedure "gtk_tree_view_column_get_clickable" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-expand
    (foreign-procedure "gtk_tree_view_column_get_expand" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-fixed-width
    (foreign-procedure "gtk_tree_view_column_get_fixed_width" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-max-width
    (foreign-procedure "gtk_tree_view_column_get_max_width" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-min-width
    (foreign-procedure "gtk_tree_view_column_get_min_width" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-reorderable
    (foreign-procedure "gtk_tree_view_column_get_reorderable" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-resizable
    (foreign-procedure "gtk_tree_view_column_get_resizable" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-sizing
    (foreign-procedure "gtk_tree_view_column_get_sizing" (iptr) iptr))
  ;;
  (define gtk-tree-view-column-get-sort-column-id
    (foreign-procedure "gtk_tree_view_column_get_sort_column_id" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-sort-indicator
    (foreign-procedure "gtk_tree_view_column_get_sort_indicator" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-sort-order
    (foreign-procedure "gtk_tree_view_column_get_sort_order" (iptr) iptr))
  ;;
  (define gtk-tree-view-column-get-spacing
    (foreign-procedure "gtk_tree_view_column_get_spacing" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-title
    (foreign-procedure "gtk_tree_view_column_get_title" (iptr) string))
  ;;
  (define gtk-tree-view-column-get-tree-view
    (foreign-procedure "gtk_tree_view_column_get_tree_view" (iptr) iptr))
  ;;
  (define gtk-tree-view-column-get-visible
    (foreign-procedure "gtk_tree_view_column_get_visible" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-widget
    (foreign-procedure "gtk_tree_view_column_get_widget" (iptr) iptr))
  ;;
  (define gtk-tree-view-column-get-width
    (foreign-procedure "gtk_tree_view_column_get_width" (iptr) int))
  ;;
  (define gtk-tree-view-column-get-x-offset
    (foreign-procedure "gtk_tree_view_column_get_x_offset" (iptr) int))
  ;;
  (define gtk-tree-view-column-pack-end
    (foreign-procedure "gtk_tree_view_column_pack_end" (iptr iptr int) void))
  ;;
  (define gtk-tree-view-column-pack-start
    (foreign-procedure "gtk_tree_view_column_pack_start" (iptr iptr int) void))
  ;;
  (define gtk-tree-view-column-queue-resize
    (foreign-procedure "gtk_tree_view_column_queue_resize" (iptr) void))
  ;;
  (define gtk-tree-view-column-set-alignment
    (foreign-procedure "gtk_tree_view_column_set_alignment" (iptr float) void))
  ;;
  (define gtk-tree-view-column-set-attributes
    (foreign-procedure "gtk_tree_view_column_set_attributes" (iptr iptr) void))
  ;;
  (define gtk-tree-view-column-set-cell-data-func
    (foreign-procedure "gtk_tree_view_column_set_cell_data_func"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-tree-view-column-set-clickable
    (foreign-procedure "gtk_tree_view_column_set_clickable" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-expand
    (foreign-procedure "gtk_tree_view_column_set_expand" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-fixed-width
    (foreign-procedure "gtk_tree_view_column_set_fixed_width" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-max-width
    (foreign-procedure "gtk_tree_view_column_set_max_width" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-min-width
    (foreign-procedure "gtk_tree_view_column_set_min_width" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-reorderable
    (foreign-procedure "gtk_tree_view_column_set_reorderable" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-resizable
    (foreign-procedure "gtk_tree_view_column_set_resizable" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-sizing
    (foreign-procedure "gtk_tree_view_column_set_sizing" (iptr iptr) void))
  ;;
  (define gtk-tree-view-column-set-sort-column-id
    (foreign-procedure "gtk_tree_view_column_set_sort_column_id"
		       (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-sort-indicator
    (foreign-procedure "gtk_tree_view_column_set_sort_indicator"
		       (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-sort-order
    (foreign-procedure "gtk_tree_view_column_set_sort_order" (iptr iptr) void))
  ;;
  (define gtk-tree-view-column-set-spacing
    (foreign-procedure "gtk_tree_view_column_set_spacing" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-title
    (foreign-procedure "gtk_tree_view_column_set_title" (iptr string) void))
  ;;
  (define gtk-tree-view-column-set-visible
    (foreign-procedure "gtk_tree_view_column_set_visible" (iptr int) void))
  ;;
  (define gtk-tree-view-column-set-widget
    (foreign-procedure "gtk_tree_view_column_set_widget" (iptr iptr) void))
  ;;
  (define gtk-video-new
    (foreign-procedure "gtk_video_new" () iptr))
  ;;
  (define gtk-video-new-for-file
    (foreign-procedure "gtk_video_new_for_file" (iptr) iptr))
  ;;
  (define gtk-video-new-for-filename
    (foreign-procedure "gtk_video_new_for_filename" (string) iptr))
  ;;
  (define gtk-video-new-for-media-stream
    (foreign-procedure "gtk_video_new_for_media_stream" (iptr) iptr))
  ;;
  (define gtk-video-new-for-resource
    (foreign-procedure "gtk_video_new_for_resource" (string) iptr))
  ;;
  (define gtk-video-get-autoplay
    (foreign-procedure "gtk_video_get_autoplay" (iptr) int))
  ;;
  (define gtk-video-get-file
    (foreign-procedure "gtk_video_get_file" (iptr) iptr))
  ;;
  (define gtk-video-get-loop
    (foreign-procedure "gtk_video_get_loop" (iptr) int))
  ;;
  (define gtk-video-get-media-stream
    (foreign-procedure "gtk_video_get_media_stream" (iptr) iptr))
  ;;
  (define gtk-video-set-autoplay
    (foreign-procedure "gtk_video_set_autoplay" (iptr int) void))
  ;;
  (define gtk-video-set-file
    (foreign-procedure "gtk_video_set_file" (iptr iptr) void))
  ;;
  (define gtk-video-set-filename
    (foreign-procedure "gtk_video_set_filename" (iptr string) void))
  ;;
  (define gtk-video-set-loop
    (foreign-procedure "gtk_video_set_loop" (iptr int) void))
  ;;
  (define gtk-video-set-media-stream
    (foreign-procedure "gtk_video_set_media_stream" (iptr iptr) void))
  ;;
  (define gtk-video-set-resource
    (foreign-procedure "gtk_video_set_resource" (iptr string) void))
  ;;
  (define gtk-viewport-new
    (foreign-procedure "gtk_viewport_new" (iptr iptr) iptr))
  ;;
  (define gtk-viewport-get-child
    (foreign-procedure "gtk_viewport_get_child" (iptr) iptr))
  ;;
  (define gtk-viewport-get-scroll-to-focus
    (foreign-procedure "gtk_viewport_get_scroll_to_focus" (iptr) int))
  ;;
  (define gtk-viewport-set-child
    (foreign-procedure "gtk_viewport_set_child" (iptr iptr) void))
  ;;
  (define gtk-viewport-set-scroll-to-focus
    (foreign-procedure "gtk_viewport_set_scroll_to_focus" (iptr int) void))
  ;;
  (define gtk-volume-button-new
    (foreign-procedure "gtk_volume_button_new" () iptr))
  ;;
  (define gtk-widget-get-default-direction
    (foreign-procedure "gtk_widget_get_default_direction" () iptr))
  ;;
  (define gtk-widget-set-default-direction
    (foreign-procedure "gtk_widget_set_default_direction" (iptr) void))
  ;;
  (define gtk-widget-action-set-enabled
    (foreign-procedure "gtk_widget_action_set_enabled" (iptr string int) void))
  ;;
  (define gtk-widget-activate
    (foreign-procedure "gtk_widget_activate" (iptr) int))
  ;;
  (define gtk-widget-activate-action
    (foreign-procedure "gtk_widget_activate_action" (iptr string string) int))
  ;;
  (define gtk-widget-activate-action-variant
    (foreign-procedure "gtk_widget_activate_action_variant"
		       (iptr string iptr) int))
  ;;
  (define gtk-widget-activate-default
    (foreign-procedure "gtk_widget_activate_default" (iptr) void))
  ;;
  (define gtk-widget-add-controller
    (foreign-procedure "gtk_widget_add_controller" (iptr iptr) void))
  ;;
  (define gtk-widget-add-css-class
    (foreign-procedure "gtk_widget_add_css_class" (iptr string) void))
  ;;
  (define gtk-widget-add-mnemonic-label
    (foreign-procedure "gtk_widget_add_mnemonic_label" (iptr iptr) void))
  ;;
  (define gtk-widget-add-tick-callback
    (foreign-procedure "gtk_widget_add_tick_callback"
		       (iptr iptr iptr iptr) int))
  ;;
  (define gtk-widget-allocate
    (foreign-procedure "gtk_widget_allocate" (iptr int int int iptr) void))
  ;;
  (define gtk-widget-child-focus
    (foreign-procedure "gtk_widget_child_focus" (iptr iptr) int))
  ;;
  (define gtk-widget-compute-bounds
    (foreign-procedure "gtk_widget_compute_bounds" (iptr iptr iptr) int))
  ;;
  (define gtk-widget-compute-expand
    (foreign-procedure "gtk_widget_compute_expand" (iptr iptr) int))
  ;;
  (define gtk-widget-compute-point
    (foreign-procedure "gtk_widget_compute_point" (iptr iptr iptr iptr) int))
  ;;
  (define gtk-widget-compute-transform
    (foreign-procedure "gtk_widget_compute_transform" (iptr iptr iptr) int))
  ;;
  (define gtk-widget-contains
    (foreign-procedure "gtk_widget_contains" (iptr double double) int))
  ;;
  (define gtk-widget-create-pango-context
    (foreign-procedure "gtk_widget_create_pango_context" (iptr) iptr))
  ;;
  (define gtk-widget-create-pango-layout
    (foreign-procedure "gtk_widget_create_pango_layout" (iptr string) iptr))
  ;;
  (define gtk-drag-check-threshold
    (foreign-procedure "gtk_drag_check_threshold" (iptr int int int int) int))
  ;;
  (define gtk-widget-error-bell
    (foreign-procedure "gtk_widget_error_bell" (iptr) void))
  ;;
  (define gtk-widget-get-allocated-baseline
    (foreign-procedure "gtk_widget_get_allocated_baseline" (iptr) int))
  ;;
  (define gtk-widget-get-allocated-height
    (foreign-procedure "gtk_widget_get_allocated_height" (iptr) int))
  ;;
  (define gtk-widget-get-allocated-width
    (foreign-procedure "gtk_widget_get_allocated_width" (iptr) int))
  ;;
  (define gtk-widget-get-allocation
    (foreign-procedure "gtk_widget_get_allocation" (iptr iptr) void))
  ;;
  (define gtk-widget-get-ancestor
    (foreign-procedure "gtk_widget_get_ancestor" (iptr iptr) iptr))
  ;;
  (define gtk-widget-get-can-focus
    (foreign-procedure "gtk_widget_get_can_focus" (iptr) int))
  ;;
  (define gtk-widget-get-can-target
    (foreign-procedure "gtk_widget_get_can_target" (iptr) int))
  ;;
  (define gtk-widget-get-child-visible
    (foreign-procedure "gtk_widget_get_child_visible" (iptr) int))
  ;;
  (define gtk-widget-get-clipboard
    (foreign-procedure "gtk_widget_get_clipboard" (iptr) iptr))
  ;;
  (define gtk-widget-get-css-classes
    (foreign-procedure "gtk_widget_get_css_classes" (iptr) string))
  ;;
  (define gtk-widget-get-css-name
    (foreign-procedure "gtk_widget_get_css_name" (iptr) string))
  ;;
  (define gtk-widget-get-cursor
    (foreign-procedure "gtk_widget_get_cursor" (iptr) iptr))
  ;;
  (define gtk-widget-get-direction
    (foreign-procedure "gtk_widget_get_direction" (iptr) iptr))
  ;;
  (define gtk-widget-get-display
    (foreign-procedure "gtk_widget_get_display" (iptr) iptr))
  ;;
  (define gtk-widget-get-first-child
    (foreign-procedure "gtk_widget_get_first_child" (iptr) iptr))
  ;;
  (define gtk-widget-get-focus-child
    (foreign-procedure "gtk_widget_get_focus_child" (iptr) iptr))
  ;;
  (define gtk-widget-get-focus-on-click
    (foreign-procedure "gtk_widget_get_focus_on_click" (iptr) int))
  ;;
  (define gtk-widget-get-focusable
    (foreign-procedure "gtk_widget_get_focusable" (iptr) int))
  ;;
  (define gtk-widget-get-font-map
    (foreign-procedure "gtk_widget_get_font_map" (iptr) iptr))
  ;;
  (define gtk-widget-get-font-options
    (foreign-procedure "gtk_widget_get_font_options" (iptr) iptr))
  ;;
  (define gtk-widget-get-frame-clock
    (foreign-procedure "gtk_widget_get_frame_clock" (iptr) iptr))
  ;;
  (define gtk-widget-get-halign
    (foreign-procedure "gtk_widget_get_halign" (iptr) iptr))
  ;;
  (define gtk-widget-get-has-tooltip
    (foreign-procedure "gtk_widget_get_has_tooltip" (iptr) int))
  ;;
  (define gtk-widget-get-height
    (foreign-procedure "gtk_widget_get_height" (iptr) int))
  ;;
  (define gtk-widget-get-hexpand
    (foreign-procedure "gtk_widget_get_hexpand" (iptr) int))
  ;;
  (define gtk-widget-get-hexpand-set
    (foreign-procedure "gtk_widget_get_hexpand_set" (iptr) int))
  ;;
  (define gtk-widget-get-last-child
    (foreign-procedure "gtk_widget_get_last_child" (iptr) iptr))
  ;;
  (define gtk-widget-get-layout-manager
    (foreign-procedure "gtk_widget_get_layout_manager" (iptr) iptr))
  ;;
  (define gtk-widget-get-mapped
    (foreign-procedure "gtk_widget_get_mapped" (iptr) int))
  ;;
  (define gtk-widget-get-margin-bottom
    (foreign-procedure "gtk_widget_get_margin_bottom" (iptr) int))
  ;;
  (define gtk-widget-get-margin-end
    (foreign-procedure "gtk_widget_get_margin_end" (iptr) int))
  ;;
  (define gtk-widget-get-margin-start
    (foreign-procedure "gtk_widget_get_margin_start" (iptr) int))
  ;;
  (define gtk-widget-get-margin-top
    (foreign-procedure "gtk_widget_get_margin_top" (iptr) int))
  ;;
  (define gtk-widget-get-name
    (foreign-procedure "gtk_widget_get_name" (iptr) string))
  ;;
  (define gtk-widget-get-native
    (foreign-procedure "gtk_widget_get_native" (iptr) iptr))
  ;;
  (define gtk-widget-get-next-sibling
    (foreign-procedure "gtk_widget_get_next_sibling" (iptr) iptr))
  ;;
  (define gtk-widget-get-opacity
    (foreign-procedure "gtk_widget_get_opacity" (iptr) double))
  ;;
  (define gtk-widget-get-overflow
    (foreign-procedure "gtk_widget_get_overflow" (iptr) iptr))
  ;;
  (define gtk-widget-get-pango-context
    (foreign-procedure "gtk_widget_get_pango_context" (iptr) iptr))
  ;;
  (define gtk-widget-get-parent
    (foreign-procedure "gtk_widget_get_parent" (iptr) iptr))
  ;;
  (define gtk-widget-get-preferred-size
    (foreign-procedure "gtk_widget_get_preferred_size" (iptr iptr iptr) void))
  ;;
  (define gtk-widget-get-prev-sibling
    (foreign-procedure "gtk_widget_get_prev_sibling" (iptr) iptr))
  ;;
  (define gtk-widget-get-primary-clipboard
    (foreign-procedure "gtk_widget_get_primary_clipboard" (iptr) iptr))
  ;;
  (define gtk-widget-get-realized
    (foreign-procedure "gtk_widget_get_realized" (iptr) int))
  ;;
  (define gtk-widget-get-receives-default
    (foreign-procedure "gtk_widget_get_receives_default" (iptr) int))
  ;;
  (define gtk-widget-get-request-mode
    (foreign-procedure "gtk_widget_get_request_mode" (iptr) iptr))
  ;;
  (define gtk-widget-get-root
    (foreign-procedure "gtk_widget_get_root" (iptr) iptr))
  ;;
  (define gtk-widget-get-scale-factor
    (foreign-procedure "gtk_widget_get_scale_factor" (iptr) int))
  ;;
  (define gtk-widget-get-sensitive
    (foreign-procedure "gtk_widget_get_sensitive" (iptr) int))
  ;;
  (define gtk-widget-get-settings
    (foreign-procedure "gtk_widget_get_settings" (iptr) iptr))
  ;;
  (define gtk-widget-get-size
    (foreign-procedure "gtk_widget_get_size" (iptr iptr) int))
  ;;
  (define gtk-widget-get-size-request
    (foreign-procedure "gtk_widget_get_size_request" (iptr int int) void))
  ;;
  (define gtk-widget-get-state-flags
    (foreign-procedure "gtk_widget_get_state_flags" (iptr) iptr))
  ;;
  (define gtk-widget-get-style-context
    (foreign-procedure "gtk_widget_get_style_context" (iptr) iptr))
  ;;
  (define gtk-widget-get-template-child
    (foreign-procedure "gtk_widget_get_template_child"
		       (iptr iptr string) iptr))
  ;;
  (define gtk-widget-get-tooltip-markup
    (foreign-procedure "gtk_widget_get_tooltip_markup" (iptr) string))
  ;;
  (define gtk-widget-get-tooltip-text
    (foreign-procedure "gtk_widget_get_tooltip_text" (iptr) string))
  ;;
  (define gtk-widget-get-valign
    (foreign-procedure "gtk_widget_get_valign" (iptr) iptr))
  ;;
  (define gtk-widget-get-vexpand
    (foreign-procedure "gtk_widget_get_vexpand" (iptr) int))
  ;;
  (define gtk-widget-get-vexpand-set
    (foreign-procedure "gtk_widget_get_vexpand_set" (iptr) int))
  ;;
  (define gtk-widget-get-visible
    (foreign-procedure "gtk_widget_get_visible" (iptr) int))
  ;;
  (define gtk-widget-get-width
    (foreign-procedure "gtk_widget_get_width" (iptr) int))
  ;;
  (define gtk-widget-grab-focus
    (foreign-procedure "gtk_widget_grab_focus" (iptr) int))
  ;;
  (define gtk-widget-has-css-class
    (foreign-procedure "gtk_widget_has_css_class" (iptr string) int))
  ;;
  (define gtk-widget-has-default
    (foreign-procedure "gtk_widget_has_default" (iptr) int))
  ;;
  (define gtk-widget-has-focus
    (foreign-procedure "gtk_widget_has_focus" (iptr) int))
  ;;
  (define gtk-widget-has-visible-focus
    (foreign-procedure "gtk_widget_has_visible_focus" (iptr) int))
  ;;
  (define gtk-widget-hide
    (foreign-procedure "gtk_widget_hide" (iptr) void))
  ;;
  (define gtk-widget-in-destruction
    (foreign-procedure "gtk_widget_in_destruction" (iptr) int))
  ;;
  (define gtk-widget-init-template
    (foreign-procedure "gtk_widget_init_template" (iptr) void))
  ;;
  (define gtk-widget-insert-action-group
    (foreign-procedure "gtk_widget_insert_action_group"
		       (iptr string iptr) void))
  ;;
  (define gtk-widget-insert-after
    (foreign-procedure "gtk_widget_insert_after" (iptr iptr iptr) void))
  ;;
  (define gtk-widget-insert-before
    (foreign-procedure "gtk_widget_insert_before" (iptr iptr iptr) void))
  ;;
  (define gtk-widget-is-ancestor
    (foreign-procedure "gtk_widget_is_ancestor" (iptr iptr) int))
  ;;
  (define gtk-widget-is-drawable
    (foreign-procedure "gtk_widget_is_drawable" (iptr) int))
  ;;
  (define gtk-widget-is-focus
    (foreign-procedure "gtk_widget_is_focus" (iptr) int))
  ;;
  (define gtk-widget-is-sensitive
    (foreign-procedure "gtk_widget_is_sensitive" (iptr) int))
  ;;
  (define gtk-widget-is-visible
    (foreign-procedure "gtk_widget_is_visible" (iptr) int))
  ;;
  (define gtk-widget-keynav-failed
    (foreign-procedure "gtk_widget_keynav_failed" (iptr iptr) int))
  ;;
  (define gtk-widget-list-mnemonic-labels
    (foreign-procedure "gtk_widget_list_mnemonic_labels" (iptr) iptr))
  ;;
  (define gtk-widget-map
    (foreign-procedure "gtk_widget_map" (iptr) void))
  ;;
  (define gtk-widget-measure
    (foreign-procedure "gtk_widget_measure"
		       (iptr iptr int int int int int) void))
  ;;
  (define gtk-widget-mnemonic-activate
    (foreign-procedure "gtk_widget_mnemonic_activate" (iptr int) int))
  ;;
  (define gtk-widget-observe-children
    (foreign-procedure "gtk_widget_observe_children" (iptr) iptr))
  ;;
  (define gtk-widget-observe-controllers
    (foreign-procedure "gtk_widget_observe_controllers" (iptr) iptr))
  ;;
  (define gtk-widget-pick
    (foreign-procedure "gtk_widget_pick" (iptr double double iptr) iptr))
  ;;
  (define gtk-widget-queue-allocate
    (foreign-procedure "gtk_widget_queue_allocate" (iptr) void))
  ;;
  (define gtk-widget-queue-draw
    (foreign-procedure "gtk_widget_queue_allocate" (iptr) void))
  ;;
  (define gtk-widget-queue-resize
    (foreign-procedure "gtk_widget_queue_resize" (iptr) void))
  ;;
  (define gtk-widget-realize
    (foreign-procedure "gtk_widget_realize" (iptr) void))
  ;;
  (define gtk-widget-remove-controller
    (foreign-procedure "gtk_widget_remove_controller" (iptr iptr) void))
  ;;
  (define gtk-widget-remove-css-class
    (foreign-procedure "gtk_widget_remove_css_class" (iptr string) void))
  ;;
  (define gtk-widget-remove-mnemonic-label
    (foreign-procedure "gtk_widget_remove_mnemonic_label" (iptr iptr) void))
  ;;
  (define gtk-widget-remove-tick-callback
    (foreign-procedure "gtk_widget_remove_tick_callback" (iptr int) void))
  ;;
  (define gtk-widget-set-can-focus
    (foreign-procedure "gtk_widget_set_can_focus" (iptr int) void))
  ;;
  (define gtk-widget-set-can-target
    (foreign-procedure "gtk_widget_set_can_target" (iptr int) void))
  ;;
  (define gtk-widget-set-child-visible
    (foreign-procedure "gtk_widget_set_child_visible" (iptr int) void))
  ;;
  (define gtk-widget-set-css-classes
    (foreign-procedure "gtk_widget_set_css_classes" (iptr string) void))
  ;;
  (define gtk-widget-set-cursor
    (foreign-procedure "gtk_widget_set_cursor" (iptr iptr) void))
  ;;
  (define gtk-widget-set-cursor-from-name
    (foreign-procedure "gtk_widget_set_cursor_from_name" (iptr string) void))
  ;;
  (define gtk-widget-set-direction
    (foreign-procedure "gtk_widget_set_direction" (iptr iptr) void))
  ;;
  (define gtk-widget-set-focus-child
    (foreign-procedure "gtk_widget_set_focus_child" (iptr iptr) void))
  ;;
  (define gtk-widget-set-focus-on-click
    (foreign-procedure "gtk_widget_set_focus_on_click" (iptr int) void))
  ;;
  (define gtk-widget-set-focusable
    (foreign-procedure "gtk_widget_set_focusable" (iptr int) void))
  ;;
  (define gtk-widget-set-font-map
    (foreign-procedure "gtk_widget_set_font_map" (iptr iptr) void))
  ;;
  (define gtk-widget-set-font-options
    (foreign-procedure "gtk_widget_set_font_options" (iptr iptr) void))
  ;;
  (define gtk-widget-set-halign
    (foreign-procedure "gtk_widget_set_halign" (iptr iptr) void))
  ;;
  (define gtk-widget-set-has-tooltip
    (foreign-procedure "gtk_widget_set_has_tooltip" (iptr int) void))
  ;;
  (define gtk-widget-set-hexpand
    (foreign-procedure "gtk_widget_set_hexpand" (iptr int) void))
  ;;
  (define gtk-widget-set-hexpand-set
    (foreign-procedure "gtk_widget_set_hexpand_set" (iptr int) void))
  ;;
  (define gtk-widget-set-layout-manager
    (foreign-procedure "gtk_widget_set_layout_manager" (iptr iptr) void))
  ;;
  (define gtk-widget-set-margin-start
    (foreign-procedure "gtk_widget_set_margin_start" (iptr int) void))
  ;;
  (define gtk-widget-set-margin-end
    (foreign-procedure "gtk_widget_set_margin_end" (iptr int) void))
  ;;
  (define gtk-widget-set-margin-top
    (foreign-procedure "gtk_widget_set_margin_top" (iptr int) void))
  ;;
  (define gtk-widget-set-margin-bottom
    (foreign-procedure "gtk_widget_set_margin_bottom" (iptr int) void))
  ;;
  (define gtk-widget-set-name
    (foreign-procedure "gtk_widget_set_name" (iptr string) void))
  ;;
  (define gtk-widget-set-opacity
    (foreign-procedure "gtk_widget_set_opacity" (iptr double) void))
  ;;
  (define gtk-widget-set-overflow
    (foreign-procedure "gtk_widget_set_overflow" (iptr iptr) void))
  ;;
  (define gtk-widget-set-parent
    (foreign-procedure "gtk_widget_set_parent" (iptr iptr) void))
  ;;
  (define gtk-widget-set-receives-default
    (foreign-procedure "gtk_widget_set_receives_default" (iptr int) void))
  ;;
  (define gtk-widget-set-sensitive
    (foreign-procedure "gtk_widget_set_sensitive" (iptr int) void))
  ;;
  (define gtk-widget-set-size-request
    (foreign-procedure "gtk_widget_set_size_request" (iptr int int) void))
  ;;
  (define gtk-widget-set-state-flags
    (foreign-procedure "gtk_widget_set_state_flags" (iptr iptr int) void))
  ;;
  (define gtk-widget-set-tooltip-markup
    (foreign-procedure "gtk_widget_set_tooltip_markup" (iptr string) void))
  ;;
  (define gtk-widget-set-tooltip-text
    (foreign-procedure "gtk_widget_set_tooltip_text" (iptr string) void))
  ;;
  (define gtk-widget-set-valign
    (foreign-procedure "gtk_widget_set_valign" (iptr int) void))
  ;;
  (define gtk-widget-set-vexpand
    (foreign-procedure "gtk_widget_set_vexpand" (iptr int) void))
  ;;
  (define gtk-widget-set-vexpand-set
    (foreign-procedure "gtk_widget_set_vexpand_set" (iptr int) void))
  ;;
  (define gtk-widget-set-visible
    (foreign-procedure "gtk_widget_set_visible" (iptr int) void))
  ;;
  (define gtk-widget-should-layout
    (foreign-procedure "gtk_widget_should_layout" (iptr) int))
  ;;
  (define gtk-widget-show
    (foreign-procedure "gtk_widget_show" (iptr) void))
  ;;
  (define gtk-widget-size-allocate
    (foreign-procedure "gtk_widget_size_allocate" (iptr string int) void))
  ;;
  (define gtk-widget-snapshot-child
    (foreign-procedure "gtk_widget_snapshot_child" (iptr iptr iptr) void))
  ;;
  (define gtk-widget-translate-coordinates
    (foreign-procedure "gtk_widget_translate_coordinates"
		       (iptr iptr double double double double) int))
  ;;
  (define gtk-widget-trigger-tooltip-query
    (foreign-procedure "gtk_widget_trigger_tooltip_query" (iptr) void))
  ;;
  (define gtk-widget-unmap
    (foreign-procedure "gtk_widget_unmap" (iptr) void))
  ;;
  (define gtk-widget-unparent
    (foreign-procedure "gtk_widget_unparent" (iptr) void))
  ;;
  (define gtk-widget-unrealize
    (foreign-procedure "gtk_widget_unrealize" (iptr) void))
  ;;
  (define gtk-widget-unset-state-flags
    (foreign-procedure "gtk_widget_unset_state_flags" (iptr iptr) void))
  ;;
  (define gtk-widget-paintable-new
    (foreign-procedure "gtk_widget_paintable_new" (iptr) iptr))
  ;;
  (define gtk-widget-paintable-get-widget
    (foreign-procedure "gtk_widget_paintable_get_widget" (iptr) iptr))
  ;;
  (define gtk-widget-paintable-set-widget
    (foreign-procedure "gtk_widget_paintable_set_widget" (iptr iptr) void))  
  ;;
  (define gtk-window-new 
    (foreign-procedure "gtk_window_new" (int) iptr))
  ;;
  (define gtk-window-get-default-icon-name
    (foreign-procedure "gtk_window_get_default_icon_name" () string))
  ;;
  (define gtk-window-get-toplevels
    (foreign-procedure "gtk_window_get_toplevels" () iptr))
  ;;
  (define gtk-window-list-toplevels
    (foreign-procedure "gtk_window_list_toplevels" () iptr))
  ;;
  (define gtk-window-set-auto-startup-notification
    (foreign-procedure "gtk_window_set_auto_startup_notification" (int) void))
  ;;
  (define gtk-window-set-default-icon-name
    (foreign-procedure "gtk_window_set_default_icon_name" (string) void))
  ;;
  (define gtk-window-set-interactive-debugging
    (foreign-procedure "gtk_window_set_interactive_debugging" (int) void))
  ;;
  (define gtk-window-close
    (foreign-procedure "gtk_window_close" (iptr) void))
  ;;
  (define gtk-window-destroy
    (foreign-procedure "gtk_window_destroy" (iptr) void))
  ;;
  (define gtk-window-fullscreen
    (foreign-procedure "gtk_window_fullscreen" (iptr) void))
  ;;
  (define gtk-window-fullscreen-on-monitor
    (foreign-procedure "gtk_window_fullscreen_on_monitor" (iptr iptr) void))
  ;;
  (define gtk-window-get-application
    (foreign-procedure "gtk_window_get_application" (iptr) iptr))
  ;;
  (define gtk-window-get-child
    (foreign-procedure "gtk_window_get_child" (iptr) iptr))
  ;;
  (define gtk-window-get-decorated
    (foreign-procedure "gtk_window_get_decorated" (iptr) int))
  ;;
  (define gtk-window-get-default-size
    (foreign-procedure "gtk_window_get_default_size" (iptr int int) void))
  ;;
  (define gtk-window-get-default-widget
    (foreign-procedure "gtk_window_get_default_widget" (iptr) iptr))
  ;;
  (define gtk-window-get-deletable
    (foreign-procedure "gtk_window_get_deletable" (iptr) int))
  ;;
  (define gtk-window-get-destroy-with-parent
    (foreign-procedure "gtk_window_get_destroy_with_parent" (iptr) int))
  ;;
  (define gtk-window-get-focus
    (foreign-procedure "gtk_window_get_focus" (iptr) iptr))
  ;;
  (define gtk-window-get-focus-visible
    (foreign-procedure "gtk_window_get_focus_visible" (iptr) int))
  ;;
  (define gtk-window-get-group
    (foreign-procedure "gtk_window_get_group" (iptr) iptr))
  ;;
  (define gtk-window-get-handle-menubar-accel
    (foreign-procedure "gtk_window_get_handle_menubar_accel" (iptr) int))
  ;;
  (define gtk-window-get-hide-on-close
    (foreign-procedure "gtk_window_get_hide_on_close" (iptr) int))
  ;;
  (define gtk-window-get-icon-name
    (foreign-procedure "gtk_window_get_icon_name" (iptr) string))
  ;;
  (define gtk-window-get-mnemonics-visible
    (foreign-procedure "gtk_window_get_mnemonics_visible" (iptr) int))
  ;;
  (define gtk-window-get-modal
    (foreign-procedure "gtk_window_get_modal" (iptr) int))
  ;;
  (define gtk-window-get-resizable
    (foreign-procedure "gtk_window_get_resizable" (iptr) int))
  ;;
  (define gtk-window-get-title
    (foreign-procedure "gtk_window_get_title" (iptr) string))
  ;;
  (define gtk-window-get-titlebar
    (foreign-procedure "gtk_window_get_titlebar" (iptr) iptr))
  ;;
  (define gtk-window-get-transient-for
    (foreign-procedure "gtk_window_get_transient_for" (iptr) iptr))
  ;;
  (define gtk-window-has-group
    (foreign-procedure "gtk_window_has_group" (iptr) int))
  ;;
  (define gtk-window-is-active
    (foreign-procedure "gtk_window_is_active" (iptr) int))
  ;;
  (define gtk-window-is-fullscreen
    (foreign-procedure "gtk_window_is_fullscreen" (iptr) int))
  ;;
  (define gtk-window-is-maximized
    (foreign-procedure "gtk_window_is_maximized" (iptr) int))
  ;;
  (define gtk-window-maximize
    (foreign-procedure "gtk_window_maximize" (iptr) void))
  ;;
  (define gtk-window-minimize
    (foreign-procedure "gtk_window_minimize" (iptr) void))
  ;;
  (define gtk-window-present
    (foreign-procedure "gtk_window_present" (iptr) void))
  ;;
  (define gtk-window-present-with-time
    (foreign-procedure "gtk_window_present_with_time" (iptr int) void))
  ;;
  (define gtk-window-set-application
    (foreign-procedure "gtk_window_set_application" (iptr iptr) void))
  ;;
  (define gtk-window-set-child
    (foreign-procedure "gtk_window_set_child" (iptr iptr) void))
  ;;
  (define gtk-window-set-decorated
    (foreign-procedure "gtk_window_set_decorated" (iptr int) void))
  ;;
  (define gtk-window-set-default-size 
    (foreign-procedure "gtk_window_set_default_size" (iptr int int) void))
  ;;
  (define gtk-window-set-default-widget
    (foreign-procedure "gtk_window_set_default_widget" (iptr iptr) void))
  ;;
  (define gtk-window-set-deletable
    (foreign-procedure "gtk_window_set_deletable" (iptr int) void))
  ;;
  (define gtk-window-set-destroy-with-parent
    (foreign-procedure "gtk_window_set_destroy_with_parent" (iptr int) void))
  ;;
  (define gtk-window-set-display
    (foreign-procedure "gtk_window_set_display" (iptr iptr) void))
  ;;
  (define gtk-window-set-focus
    (foreign-procedure "gtk_window_set_focus" (iptr iptr) void))
  ;;
  (define gtk-window-set-focus-visible
    (foreign-procedure "gtk_window_set_focus_visible" (iptr int) void))
  ;;
  (define gtk-window-set-handle-menubar-accel
    (foreign-procedure "gtk_window_set_handle_menubar_accel" (iptr int) void))
  ;;
  (define gtk-window-set-hide-on-close
    (foreign-procedure "gtk_window_set_hide_on_close" (iptr int) void))
  ;;
  (define gtk-window-set-icon-name
    (foreign-procedure "gtk_window_set_icon_name" (iptr string) void))
  ;;
  (define gtk-window-set-mnemonics-visible
    (foreign-procedure "gtk_window_set_mnemonics_visible" (iptr int) void))
  ;;
  (define gtk-window-set-modal
    (foreign-procedure "gtk_window_set_modal" (iptr int) void))
  ;;
  (define gtk-window-set-resizable
    (foreign-procedure "gtk_window_set_resizable" (iptr int) void))
  ;;
  (define gtk-window-set-startup-id
    (foreign-procedure "gtk_window_set_startup_id" (iptr string) void))
  ;;
  (define gtk-window-set-title
    (foreign-procedure "gtk_window_set_title" (iptr string) void))
  ;;
  (define gtk-window-set-titlebar
    (foreign-procedure "gtk_window_set_titlebar" (iptr iptr) void))
  ;;
  (define gtk-window-set-transient-for
    (foreign-procedure "gtk_window_set_transient_for" (iptr iptr) void))
  ;;
  (define gtk-window-unfullscreen
    (foreign-procedure "gtk_window_unfullscreen" (iptr) void))
  ;;
  (define gtk-window-unmaximize
    (foreign-procedure "gtk_window_unmaximize" (iptr) void))
  ;;
  (define gtk-window-unminimize
    (foreign-procedure "gtk_window_unminimize" (iptr) void))
  ;;
  (define gtk-window-controls-new
    (foreign-procedure "gtk_window_controls_new" (iptr) iptr))
  ;;
  (define gtk-window-controls-get-decoration-layout
    (foreign-procedure "gtk_window_controls_get_decoration_layout"
		       (iptr) string))
  ;;
  (define gtk-window-controls-get-empty
    (foreign-procedure "gtk_window_controls_get_empty" (iptr) int))
  ;;
  (define gtk-window-controls-get-side
    (foreign-procedure "gtk_window_controls_get_side" (iptr) iptr))
  ;;
  (define gtk-window-controls-set-decoration-layout
    (foreign-procedure "gtk_window_controls_set_decoration_layout"
		       (iptr string) void))
  ;;
  (define gtk-window-controls-set-side
    (foreign-procedure "gtk_window_controls_set_side" (iptr iptr) void))
  ;;
  (define gtk-window-group-new
    (foreign-procedure "gtk_window_group_new" () iptr))
  ;;
  (define gtk-window-group-add-window
    (foreign-procedure "gtk_window_group_add_window" (iptr iptr) void))
  ;;
  (define gtk-window-group-list-windows
    (foreign-procedure "gtk_window_group_list_windows" (iptr) iptr))
  ;;
  (define gtk-window-group-remove-window
    (foreign-procedure "gtk_window_group_remove_window" (iptr iptr) void))
  ;;
  (define gtk-window-handle-new
    (foreign-procedure "gtk_window_handle_new" () iptr))
  ;;
  (define gtk-window-handle-get-child
    (foreign-procedure "gtk_window_handle_get_child" (iptr) iptr))
  ;;
  (define gtk-window-handle-set-child
    (foreign-procedure "gtk_window_handle_set_child" (iptr iptr) void))  
  ;;;;
  ;;;;
  (define gtk-accessible-get-accessible-role
    (foreign-procedure "gtk_accessible_get_accessible_role" (iptr) iptr))
  ;;
  (define gtk-accessible-reset-property
    (foreign-procedure "gtk_accessible_reset_property" (iptr iptr) void))
  ;;
  (define gtk-accessible-reset-relation
    (foreign-procedure "gtk_accessible_reset_relation" (iptr iptr) void))
  ;;
  (define gtk-accessible-reset-state
    (foreign-procedure "gtk_accessible_reset_state" (iptr iptr) void))
  ;;
  (define gtk-accessible-update-property
    (foreign-procedure "gtk_accessible_update_property" (iptr iptr) void))
  ;;
  (define gtk-accessible-update-property-value
    (foreign-procedure "gtk_accessible_update_property_value"
		       (iptr int iptr iptr) void))
  ;;
  (define gtk-accessible-update-relation
    (foreign-procedure "gtk_accessible_update_relation" (iptr iptr) void))
  ;;
  (define gtk-accessible-update-relation-value
    (foreign-procedure "gtk_accessible_update_relation_value"
		       (iptr int iptr iptr) void))
  ;;
  (define gtk-accessible-update-state
    (foreign-procedure "gtk_accessible_update_state" (iptr iptr) void))
  ;;
  (define gtk-accessible-update-state-value
    (foreign-procedure "gtk_accessible_update_state_value"
		       (iptr int iptr iptr) void))
  ;;
  (define gtk-actionable-get-action-name
    (foreign-procedure "gtk_actionable_get_action_name" (iptr) string))
  ;;
  (define gtk-actionable-get-action-target-value
    (foreign-procedure "gtk_actionable_get_action_target_value" (iptr) iptr))
  ;;
  (define gtk-actionable-set-action-name
    (foreign-procedure "gtk_actionable_set_action_name" (iptr string) void))
  ;;
  (define gtk-actionable-set-action-target
    (foreign-procedure "gtk_actionable_set_action_target" (iptr string) void))
  ;;
  (define gtk-actionable-set-action-target-value
    (foreign-procedure "gtk_actionable_set_action_target_value"
		       (iptr iptr) void))
  ;;
  (define gtk-actionable-set-detailed-action-name
    (foreign-procedure "gtk_actionable_set_detailed_action_name"
		       (iptr string) void))
  ;;
  (define gtk-app-chooser-get-app-info
    (foreign-procedure "gtk_app_chooser_get_app_info" (iptr) iptr))
  ;;
  (define gtk-app-chooser-get-content-type
    (foreign-procedure "gtk_app_chooser_get_content_type" (iptr) string))
  ;;
  (define gtk-app-chooser-refresh
    (foreign-procedure "gtk_app_chooser_refresh" (iptr) void))
  ;;
  (define gtk-buildable-get-buildable-id
    (foreign-procedure "gtk_buildable_get_buildable_id" (iptr) string))
  ;;
  (define gtk-cell-editable-editing-done
    (foreign-procedure "gtk_cell_editable_editing_done" (iptr) void))
  ;;
  (define gtk-cell-editable-remove-widget
    (foreign-procedure "gtk_cell_editable_remove_widget" (iptr) void))
  ;;
  (define gtk-cell-editable-start-editing
    (foreign-procedure "gtk_cell_editable_start_editing" (iptr iptr) void))
  ;;
  (define gtk-cell-layout-add-attribute
    (foreign-procedure "gtk_cell_layout_add_attribute"
		       (iptr iptr string int) void))
  ;;
  (define gtk-cell-layout-clear
    (foreign-procedure "gtk_cell_layout_clear" (iptr) void))
  ;;
  (define gtk-cell-layout-clear-attributes
    (foreign-procedure "gtk_cell_layout_clear_attributes" (iptr iptr) void))
  ;;
  (define gtk-cell-layout-get-area
    (foreign-procedure "gtk_cell_layout_get_area" (iptr) iptr))
  ;;
  (define gtk-cell-layout-get-cells
    (foreign-procedure "gtk_cell_layout_get_cells" (iptr) iptr))
  ;;
  (define gtk-cell-layout-pack-end
    (foreign-procedure "gtk_cell_layout_pack_end" (iptr iptr int) void))
  ;;
  (define gtk-cell-layout-pack-start
    (foreign-procedure "gtk_cell_layout_pack_start" (iptr iptr int) void))
  ;;
  (define gtk-cell-layout-reorder
    (foreign-procedure "gtk_cell_layout_reorder" (iptr iptr int) void))
  ;;
  (define gtk-cell-layout-set-attributes
    (foreign-procedure "gtk_cell_layout_set_attributes" (iptr iptr) void))
  ;;
  (define gtk-cell-layout-set-cell-data-func
    (foreign-procedure "gtk_cell_layout_set_cell_data_func"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-color-chooser-add-palette
    (foreign-procedure "gtk_color_chooser_add_palette"
		       (iptr iptr int int iptr) void))
  ;;
  (define gtk-color-chooser-get-rgba
    (foreign-procedure "gtk_color_chooser_get_rgba" (iptr iptr) void))
  ;;
  (define gtk-color-chooser-get-use-alpha
    (foreign-procedure "gtk_color_chooser_get_use_alpha" (iptr) int))
  ;;
  (define gtk-color-chooser-set-rgba
    (foreign-procedure "gtk_color_chooser_set_rgba" (iptr iptr) void))
  ;;
  (define gtk-color-chooser-set-use-alpha
    (foreign-procedure "gtk_color_chooser_set_use_alpha" (iptr int) void))
  ;;
  





  
  ;;;;
  (define gtk-accelerator-get-default-mod-mask
    (foreign-procedure "gtk_accelerator_get_default_mod_mask" () iptr))
  ;;
  (define gtk-accelerator-get-label
    (foreign-procedure "gtk_accelerator_get_label" (int iptr) string))
  ;;
  (define gtk-accelerator-get-label-with-keycode
    (foreign-procedure "gtk_accelerator_get_label_with_keycode"
		       (iptr int int iptr) string))
  ;;
  (define gtk-accelerator-name
    (foreign-procedure "gtk_accelerator_name" (int iptr) string))
  ;;
  (define gtk-accelerator-name-with-keycode
    (foreign-procedure "gtk_accelerator_name_with_keycode"
		       (iptr int int iptr) string))
  ;;
  (define gtk-accelerator-parse
    (foreign-procedure "gtk_accelerator_parse" (string int iptr) int))
  ;;
  (define gtk-accelerator-parse-with-keycode
    (foreign-procedure "gtk_accelerator_parse_with_keycode"
		       (string iptr int int iptr) int))
  ;;
  (define gtk-accelerator-valid
    (foreign-procedure "gtk_accelerator_valid" (int iptr) int))
  ;;
  (define gtk-check-version
    (foreign-procedure "gtk_check_version" (int int int) string))
  ;;
  (define gtk-css-parser-error-quark
    (foreign-procedure "gtk_css_parser_error_quark" () iptr))
  ;;
  (define gtk-css-parser-warning-quark
    (foreign-procedure "gtk_css_parser_warning_quark" () iptr))
  ;;
  (define gtk-disable-setlocale
    (foreign-procedure "gtk_disable_setlocale" () void))
  ;;
  (define gtk-distribute-natural-allocation
    (foreign-procedure "gtk_distribute_natural_allocation" (int int iptr) int))
  ;;
  (define gtk-enumerate-printers
    (foreign-procedure "gtk_enumerate_printers" (iptr iptr iptr int) void))
  ;;
  (define gtk-get-binary-age
    (foreign-procedure "gtk_get_binary_age" () int))
  ;;
  (define gtk-get-debug-flags
    (foreign-procedure "gtk_get_debug_flags" () iptr))
  ;;
  (define gtk-get-default-language
    (foreign-procedure "gtk_get_default_language" () iptr))
  ;;
  (define gtk-get-interface-age
    (foreign-procedure "gtk_get_interface_age" () int))
  ;;
  (define gtk-get-locale-direction
    (foreign-procedure "gtk_get_locale_direction" () iptr))
  ;;
  (define gtk-hsv-to-rgb
    (foreign-procedure "gtk_hsv_to_rgb"
		       (float float float float float float) void))
  ;;
  (define gtk-init
    (foreign-procedure "gtk_init" () void))
  ;;
  (define gtk-init-check
    (foreign-procedure "gtk_init_check" () int))
  ;;
  (define gtk-is-initialized
    (foreign-procedure "gtk_is_initialized" () int))
  ;;
  (define gtk-param-spec-expression
    (foreign-procedure "gtk_param_spec_expression"
		       (string string string iptr) iptr))
  ;;
  (define gtk-print-run-page-setup-dialog
    (foreign-procedure "gtk_print_run_page_setup_dialog"
		       (iptr iptr iptr) iptr))
  ;;
  (define gtk-print-run-page-setup-dialog-async
    (foreign-procedure "gtk_print_run_page_setup_dialog_async"
		       (iptr iptr iptr iptr iptr) void))
  ;;
  (define gtk-render-activity
    (foreign-procedure "gtk_render_activity"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-arrow
    (foreign-procedure "gtk_render_arrow"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-background
    (foreign-procedure "gtk_render_background"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-check
    (foreign-procedure "gtk_render_check"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-expander
    (foreign-procedure "gtk_render_expander"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-focus
    (foreign-procedure "gtk_render_focus"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-frame
    (foreign-procedure "gtk_render_frame"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-handle
    (foreign-procedure "gtk_render_handle"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-icon
    (foreign-procedure "gtk_render_icon" (iptr iptr iptr double double) void))
  ;;
  (define gtk-render-layout
    (foreign-procedure "gtk_render_layout" (iptr iptr double double iptr) void))
  ;;
  (define gtk-render-line
    (foreign-procedure "gtk_render_line"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-render-option
    (foreign-procedure "gtk_render_option"
		       (iptr iptr double double double double) void))
  ;;
  (define gtk-rgb-to-hsv
    (foreign-procedure "gtk_rgb_to_hsv"
		       (float float float float float float) void))
  ;;
  (define gtk-set-debug-flags
    (foreign-procedure "gtk_set_debug_flags" (iptr) void))
  ;;
  (define gtk-show-about-dialog
    (foreign-procedure "gtk_show_about_dialog" (iptr string) void))
  ;;
  (define gtk-show-uri
    (foreign-procedure "gtk_show_uri" (iptr string int) void))
  ;;
  (define gtk-show-uri-full
    (foreign-procedure "gtk_show_uri_full"
		       (iptr string int iptr iptr iptr) void))
  ;;
  (define gtk-show-uri-full-finish
    (foreign-procedure "gtk_show_uri_full_finish" (iptr iptr iptr) int))
  ;;
  (define gtk-test-accessible-assertion-message-role
    (foreign-procedure "gtk_test_accessible_assertion_message_role"
		       (string string int string string iptr iptr iptr) void))
  ;;
  (define gtk-test-accessible-check-property
    (foreign-procedure "gtk_test_accessible_check_property" (iptr iptr) string))
  ;;
  (define gtk-test-accessible-check-relation
    (foreign-procedure "gtk_test_accessible_check_relation" (iptr iptr) string))
  ;;
  (define gtk-test-accessible-check-state
    (foreign-procedure "gtk_test_accessible_check_state" (iptr iptr) string))
  ;;
  (define gtk-test-accessible-has-property
    (foreign-procedure "gtk_test_accessible_has_property" (iptr iptr) int))
  ;;
  (define gtk-test-accessible-has-relation
    (foreign-procedure "gtk_test_accessible_has_relation" (iptr iptr) int))
  ;;
  (define gtk-test-accessible-has-role
    (foreign-procedure "gtk_test_accessible_has_role" (iptr iptr) int))
  ;;
  (define gtk-test-accessible-has-state
    (foreign-procedure "gtk_test_accessible_has_state" (iptr iptr) int))
  ;;
  (define gtk-test-init
    (foreign-procedure "gtk_test_init" (int string) void))
  ;;
  (define gtk-test-list-all-types
    (foreign-procedure "gtk_test_list_all_types" (int) iptr))
  ;;
  (define gtk-test-register-all-types
    (foreign-procedure "gtk_test_register_all_types" () void))
  ;;
  (define gtk-test-widget-wait-for-draw
    (foreign-procedure "gtk_test_widget_wait_for_draw" (iptr) void))
  ;;
  (define gtk-tree-create-row-drag-content
    (foreign-procedure "gtk_tree_create_row_drag_content" (iptr iptr) iptr))
  ;;
  (define gtk-tree-get-row-drag-data
    (foreign-procedure "gtk_tree_get_row_drag_data" (iptr iptr iptr) int))
  ;;
  (define gtk-value-dup-expression
    (foreign-procedure "gtk_value_dup_expression" (iptr) iptr))
  ;;
  (define gtk-value-get-expression
    (foreign-procedure "gtk_value_get_expression" (iptr) iptr))
  ;;
  (define gtk-value-set-expression
    (foreign-procedure "gtk_value_set_expression" (iptr iptr) void))
  ;;
  (define gtk-value-take-expression
    (foreign-procedure "gtk_value_take_expression" (iptr iptr) void))
  ;;
  




  ;;;;
  ;;;;
  (define gsk-blend-node-new
    (foreign-procedure "gsk_blend_node_new" (iptr iptr iptr) iptr))
  ;;
  (define gsk-blend-node-get-blend-mode
    (foreign-procedure "gsk_blend_node_get_blend_mode" (iptr) iptr))
  ;;
  (define gsk-blend-node-get-bottom-child
    (foreign-procedure "gsk_blend_node_get_bottom_child" (iptr) iptr))
  ;;
  (define gsk-blend-node-get-top-child
    (foreign-procedure "gsk_blend_node_get_top_child" (iptr) iptr))
  ;;
  (define gsk-blur-node-new
    (foreign-procedure "gsk_blur_node_new" (iptr float) iptr))
  ;;
  (define gsk-blur-node-get-child
    (foreign-procedure "gsk_blur_node_get_child" (iptr) iptr))
  ;;
  (define gsk-blur-node-get-radius
    (foreign-procedure "gsk_blur_node_get_radius" (iptr) float))
  ;;
  (define gsk-border-node-new
    (foreign-procedure "gsk_border_node_new" (iptr float iptr) iptr))
  ;;
  (define gsk-border-node-get-colors
    (foreign-procedure "gsk_border_node_get_colors" (iptr) iptr))
  ;;
  (define gsk-border-node-get-outline
    (foreign-procedure "gsk_border_node_get_outline" (iptr) iptr))
  ;;
  (define gsk-border-node-get-widths
    (foreign-procedure "gsk_border_node_get_widths" (iptr) float))
  ;;
  (define gsk-cairo-node-new
    (foreign-procedure "gsk_cairo_node_new" (iptr) iptr))
  ;;
  (define gsk-cairo-node-get-draw-context
    (foreign-procedure "gsk_cairo_node_get_draw_context" (iptr) iptr))
  ;;
  (define gsk-cairo-node-get-surface
    (foreign-procedure "gsk_cairo_node_get_surface" (iptr) iptr))
  ;;
  (define gsk-cairo-renderer-new
    (foreign-procedure "gsk_cairo_renderer_new" () iptr))
  ;;
  (define gsk-clip-node-new
    (foreign-procedure "gsk_clip_node_new" (iptr iptr) iptr))
  ;;
  (define gsk-clip-node-get-child
    (foreign-procedure "gsk_clip_node_get_child" (iptr) iptr))
  ;;
  (define gsk-clip-node-get-clip
    (foreign-procedure "gsk_clip_node_get_clip" (iptr) iptr))
  ;;
  (define gsk-color-matrix-node-new
    (foreign-procedure "gsk_color_matrix_node_new" (iptr iptr iptr) iptr))
  ;;
  (define gsk-color-matrix-node-get-child
    (foreign-procedure "gsk_color_matrix_node_get_child" (iptr) iptr))
  ;;
  (define gsk-color-matrix-node-get-color-matrix
    (foreign-procedure "gsk_color_matrix_node_get_color_matrix" (iptr) iptr))
  ;;
  (define gsk-color-matrix-node-get-color-offset
    (foreign-procedure "gsk_color_matrix_node_get_color_offset" (iptr) iptr))
  ;;
  (define gsk-color-node-new
    (foreign-procedure "gsk_color_node_new" (iptr iptr) iptr))
  ;;
  (define gsk-color-node-get-color
    (foreign-procedure "gsk_color_node_get_color" (iptr) iptr))
  ;;
  (define gsk-conic-gradient-node-new
    (foreign-procedure "gsk_conic_gradient_node_new"
		       (iptr iptr float iptr int) iptr))
  ;;
  (define gsk-conic-gradient-node-get-angle
    (foreign-procedure "gsk_conic_gradient_node_get_angle" (iptr) float))
  ;;
  (define gsk-conic-gradient-node-get-center
    (foreign-procedure "gsk_conic_gradient_node_get_center" (iptr) iptr))
  ;;
  (define gsk-conic-gradient-node-get-color-stops
    (foreign-procedure "gsk_conic_gradient_node_get_color_stops"
		       (iptr int) iptr))
  ;;
  (define gsk-conic-gradient-node-get-n-color-stops
    (foreign-procedure "gsk_conic_gradient_node_get_n_color_stops" (iptr) int))
  ;;
  (define gsk-conic-gradient-node-get-rotation
    (foreign-procedure "gsk_conic_gradient_node_get_rotation" (iptr) float))
  ;;
  (define gsk-container-node-new
    (foreign-procedure "gsk_container_node_new" (iptr int) iptr))
  ;;
  (define gsk-container-node-get-child
    (foreign-procedure "gsk_container_node_get_child" (iptr int) iptr))
  ;;
  (define gsk-container-node-get-n-children
    (foreign-procedure "gsk_container_node_get_n_children" (iptr) int))
  ;;
  (define gsk-cross-fade-node-new
    (foreign-procedure "gsk_cross_fade_node_new" (iptr iptr float) iptr))
  ;;
  (define gsk-cross-fade-node-get-end-child
    (foreign-procedure "gsk_cross_fade_node_get_end_child" (iptr) iptr))
  ;;
  (define gsk-cross-fade-node-get-progress
    (foreign-procedure "gsk_cross_fade_node_get_progress" (iptr) float))
  ;;
  (define gsk-cross-fade-node-get-start-child
    (foreign-procedure "gsk_cross_fade_node_get_start_child" (iptr) iptr))
  ;;
  (define gsk-debug-node-new
    (foreign-procedure "gsk_debug_node_new" (iptr string) iptr))
  ;;
  (define gsk-debug-node-get-child
    (foreign-procedure "gsk_debug_node_get_child" (iptr) iptr))
  ;;
  (define gsk-debug-node-get-message
    (foreign-procedure "gsk_debug_node_get_message" (iptr) string))
  ;;
  (define gsk-gl-renderer-new
    (foreign-procedure "gsk_gl_renderer_new" () iptr))
  ;;
  (define gsk-gl-shader-new-from-bytes
    (foreign-procedure "gsk_gl_shader_new_from_bytes" (iptr) iptr))
  ;;
  (define gsk-gl-shader-new-from-resource
    (foreign-procedure "gsk_gl_shader_new_from_resource" (string) iptr))
  ;;
  (define gsk-gl-shader-compile
    (foreign-procedure "gsk_gl_shader_compile" (iptr iptr iptr) int))
  ;;
  (define gsk-gl-shader-find-uniform-by-name
    (foreign-procedure "gsk_gl_shader_find_uniform_by_name" (iptr string) int))
  ;;
  (define gsk-gl-shader-format-args
    (foreign-procedure "gsk_gl_shader_format_args" (iptr) iptr))
  ;;
  (define gsk-gl-shader-format-args-va
    (foreign-procedure "gsk_gl_shader_format_args_va" (iptr iptr) iptr))
  ;;
  (define gsk-gl-shader-get-arg-bool
    (foreign-procedure "gsk_gl_shader_get_arg_bool" (iptr iptr int) int))
  ;;
  (define gsk-gl-shader-get-arg-float
    (foreign-procedure "gsk_gl_shader_get_arg_float" (iptr iptr int) float))
  ;;
  (define gsk-gl-shader-get-arg-int
    (foreign-procedure "gsk_gl_shader_get_arg_int" (iptr iptr int) int))
  ;;
  (define gsk-gl-shader-get-arg-uint
    (foreign-procedure "gsk_gl_shader_get_arg_uint" (iptr iptr int) int))
  ;;
  (define gsk-gl-shader-get-arg-vec2
    (foreign-procedure "gsk_gl_shader_get_arg_vec2" (iptr iptr int iptr) void))
  ;;
  (define gsk-gl-shader-get-arg-vec3
    (foreign-procedure "gsk_gl_shader_get_arg_vec2" (iptr iptr int iptr) void))
  ;;
  (define gsk-gl-shader-get-arg-vec4
    (foreign-procedure "gsk_gl_shader_get_arg_vec2" (iptr iptr int iptr) void))
  ;;
  (define gsk-gl-shader-get-args-size
    (foreign-procedure "gsk_gl_shader_get_args_size" (iptr) int))
  ;;
  (define gsk-gl-shader-get-n-textures
    (foreign-procedure "gsk_gl_shader_get_n_textures" (iptr) int))
  ;;
  (define gsk-gl-shader-get-n-uniforms
    (foreign-procedure "gsk_gl_shader_get_n_uniforms" (iptr) int))
  ;;
  (define gsk-gl-shader-get-resource
    (foreign-procedure "gsk_gl_shader_get_resource" (iptr) string))
  ;;
  (define gsk-gl-shader-get-source
    (foreign-procedure "gsk_gl_shader_get_source" (iptr) iptr))
  ;;
  (define gsk-gl-shader-get-uniform-name
    (foreign-procedure "gsk_gl_shader_get_uniform_name" (iptr int) string))
  ;;
  (define gsk-gl-shader-get-uniform-offset
    (foreign-procedure "gsk_gl_shader_get_uniform_offset" (iptr int) int))
  ;;
  (define gsk-gl-shader-get-uniform-type
    (foreign-procedure "gsk_gl_shader_get_uniform_type" (iptr int) iptr))
  ;;
  (define gsk-gl-shader-node-new
    (foreign-procedure "gsk_gl_shader_node_new" (iptr iptr iptr iptr int) iptr))
  ;;
  (define gsk-gl-shader-node-get-args
    (foreign-procedure "gsk_gl_shader_node_get_args" (iptr) iptr))
  ;;
  (define gsk-gl-shader-node-get-child
    (foreign-procedure "gsk_gl_shader_node_get_child" (iptr int) iptr))
  ;;
  (define gsk-gl-shader-node-get-n-children
    (foreign-procedure "gsk_gl_shader_node_get_n_children" (iptr) int))
  ;;
  (define gsk-gl-shader-node-get-shader
    (foreign-procedure "gsk_gl_shader_node_get_shader" (iptr) iptr))
  ;;
  (define gsk-inset-shadow-node-new
    (foreign-procedure "gsk_inset_shadow_node_new"
		       (iptr iptr float float float float) iptr))
  ;;
  (define gsk-inset-shadow-node-get-blur-radius
    (foreign-procedure "gsk_inset_shadow_node_get_blur_radius" (iptr) float))
  ;;
  (define gsk-inset-shadow-node-get-color
    (foreign-procedure "gsk_inset_shadow_node_get_color" (iptr) iptr))
  ;;
  (define gsk-inset-shadow-node-get-dx
    (foreign-procedure "gsk_inset_shadow_node_get_dx" (iptr) float))
  ;;
  (define gsk-inset-shadow-node-get-dy
    (foreign-procedure "gsk_inset_shadow_node_get_dy" (iptr) float))
  ;;
  (define gsk-inset-shadow-node-get-outline
    (foreign-procedure "gsk_inset_shadow_node_get_outline" (iptr) iptr))
  ;;
  (define gsk-inset-shadow-node-get-spread
    (foreign-procedure "gsk_inset_shadow_node_get_spread" (iptr) float))
  ;;
  (define gsk-linear-gradient-node-new
    (foreign-procedure "gsk_linear_gradient_node_new"
		       (iptr iptr iptr iptr int) iptr))
  ;;
  (define gsk-linear-gradient-node-get-color-stops
    (foreign-procedure "gsk_linear_gradient_node_get_color_stops"
		       (iptr int) iptr))
  ;;
  (define gsk-linear-gradient-node-get-end
    (foreign-procedure "gsk_linear_gradient_node_get_end" (iptr) iptr))
  ;;
  (define gsk-linear-gradient-node-get-n-color-stops
    (foreign-procedure "gsk_linear_gradient_node_get_n_color_stops" (iptr) int))
  ;;
  (define gsk-linear-gradient-node-get-start
    (foreign-procedure "gsk_linear_gradient_node_get_start" (iptr) iptr))
  ;;
  (define gsk-opacity-node-new
    (foreign-procedure "gsk_opacity_node_new" (iptr float) iptr))
  ;;
  (define gsk-opacity-node-get-child
    (foreign-procedure "gsk_opacity_node_get_child" (iptr) iptr))
  ;;
  (define gsk-opacity-node-get-opacity
    (foreign-procedure "gsk_opacity_node_get_opacity" (iptr) float))
  ;;
  (define gsk-outset-shadow-node-new
    (foreign-procedure "gsk_outset_shadow_node_new"
		       (iptr iptr float float float float) iptr))
  ;;
  (define gsk-outset-shadow-node-get-blur-radius
    (foreign-procedure "gsk_outset_shadow_node_get_blur_radius" (iptr) float))
  ;;
  (define gsk-outset-shadow-node-get-color
    (foreign-procedure "gsk_outset_shadow_node_get_color" (iptr) iptr))
  ;;
  (define gsk-outset-shadow-node-get-dx
    (foreign-procedure "gsk_outset_shadow_node_get_dx" (iptr) float))
  ;;
  (define gsk-outset-shadow-node-get-dy
    (foreign-procedure "gsk_outset_shadow_node_get_dy" (iptr) float))
  ;;
  (define gsk-outset-shadow-node-get-outline
    (foreign-procedure "gsk_outset_shadow_node_get_outline" (iptr) iptr))
  ;;
  (define gsk-outset-shadow-node-get-spread
    (foreign-procedure "gsk_outset_shadow_node_get_spread" (iptr) float))
  ;;
  (define gsk-radial-gradient-node-new
    (foreign-procedure "gsk_radial_gradient_node_new"
		       (iptr iptr float float float float iptr int) iptr))
  ;;
  (define gsk-radial-gradient-node-get-center
    (foreign-procedure "gsk_radial_gradient_node_get_center" (iptr) iptr))
  ;;
  (define gsk-radial-gradient-node-get-color-stops
    (foreign-procedure "gsk_radial_gradient_node_get_color_stops"
		       (iptr int) iptr))
  ;;
  (define gsk-radial-gradient-node-get-end
    (foreign-procedure "gsk_radial_gradient_node_get_end" (iptr) float))
  ;;
  (define gsk-radial-gradient-node-get-hradius
    (foreign-procedure "gsk_radial_gradient_node_get_hradius" (iptr) float))
  ;;
  (define gsk-radial-gradient-node-get-n-color-stops
    (foreign-procedure "gsk_radial_gradient_node_get_n_color_stops" (iptr) int))
  ;;
  (define gsk-radial-gradient-node-get-start
    (foreign-procedure "gsk_radial_gradient_node_get_start" (iptr) float))
  ;;
  (define gsk-radial-gradient-node-get-vradius
    (foreign-procedure "gsk_radial_gradient_node_get_vradius" (iptr) float))
  ;;
  (define gsk-renderer-new-for-surface
    (foreign-procedure "gsk_renderer_new_for_surface" (iptr) iptr))
  ;;
  (define gsk-renderer-get-surface
    (foreign-procedure "gsk_renderer_get_surface" (iptr) iptr))
  ;;
  (define gsk-renderer-is-realized
    (foreign-procedure "gsk_renderer_is_realized" (iptr) boolean))
  ;;
  (define gsk-renderer-realize
    (foreign-procedure "gsk_renderer_realize" (iptr iptr iptr) boolean))
  ;;
  (define gsk-renderer-render
    (foreign-procedure "gsk_renderer_render" (iptr iptr iptr) void))
  ;;
  (define gsk-renderer-render-texture
    (foreign-procedure "gsk_renderer_render_texture" (iptr iptr iptr) iptr))
  ;;
  (define gsk-renderer-unrealize
    (foreign-procedure "gsk_renderer_unrealize" (iptr) void))
  ;;
  (define gsk-render-node-deserialize
    (foreign-procedure "gsk_render_node_deserialize" (iptr iptr iptr) iptr))
  ;;
  (define gsk-render-node-draw
    (foreign-procedure "gsk_render_node_draw" (iptr iptr) void))
  ;;
  (define gsk-render-node-get-bounds
    (foreign-procedure "gsk_render_node_get_bounds" (iptr iptr) void))
  ;;
  (define gsk-render-node-get-node-type
    (foreign-procedure "gsk_render_node_get_node_type" (iptr) iptr))
  ;;
  (define gsk-render-node-ref
    (foreign-procedure "gsk_render_node_ref" (iptr) iptr))
  ;;
  (define gsk-render-node-serialize
    (foreign-procedure "gsk_render_node_serialize" (iptr) iptr))
  ;;
  (define gsk-render-node-unref
    (foreign-procedure "gsk_render_node_unref" (iptr) void))
  ;;
  (define gsk-render-node-write-to-file
    (foreign-procedure "gsk_render_node_write_to_file" (iptr int iptr) boolean))
  ;;
  (define gsk-repeating-linear-gradient-node-new
    (foreign-procedure "gsk_repeating_linear_gradient_node_new"
		       (iptr iptr iptr iptr int) iptr))
  ;;
  (define gsk-repeating-radial-gradient-node-new
    (foreign-procedure "gsk_repeating_radial_gradient_node_new"
		       (iptr iptr float float float float iptr int) iptr))
  ;;
  (define gsk-repeat-node-new
    (foreign-procedure "gsk_repeat_node_new" (iptr iptr iptr) iptr))
  ;;
  (define gsk-repeat-node-get-child
    (foreign-procedure "gsk_repeat_node_get_child" (iptr) iptr))
  ;;
  (define gsk-repeat-node-get-child-bounds
    (foreign-procedure "gsk_repeat_node_get_child_bounds" (iptr) iptr))
  ;;
  (define gsk-rounded-clip-node-new
    (foreign-procedure "gsk_rounded_clip_node_new" (iptr iptr) iptr))
  ;;
  (define gsk-rounded-clip-node-get-child
    (foreign-procedure "gsk_rounded_clip_node_get_child" (iptr) iptr))
  ;;
  (define gsk-rounded-clip-node-get-clip
    (foreign-procedure "gsk_rounded_clip_node_get_clip" (iptr) iptr))
  ;;
  (define gsk-shadow-node-new
    (foreign-procedure "gsk_shadow_node_new" (iptr iptr int) iptr))
  ;;
  (define gsk-shadow-node-get-child
    (foreign-procedure "gsk_shadow_node_get_child" (iptr) iptr))
  ;;
  (define gsk-shadow-node-get-n-shadows
    (foreign-procedure "gsk_shadow_node_get_n_shadows" (iptr) iptr))
  ;;
  (define gsk-shadow-node-get-shadow
    (foreign-procedure "gsk_shadow_node_get_shadow" (iptr) int))
  ;;
  (define gsk-text-node-new
    (foreign-procedure "gsk_text_node_new" (iptr iptr iptr iptr) iptr))
  ;;
  (define gsk-text-node-get-color
    (foreign-procedure "gsk_text_node_get_color" (iptr) iptr))
  ;;
  (define gsk-text-node-get-font
    (foreign-procedure "gsk_text_node_get_font" (iptr) iptr))
  ;;
  (define gsk-text-node-get-glyphs
    (foreign-procedure "gsk_text_node_get_glyphs" (iptr) iptr))
  ;;
  (define gsk-text-node-get-num-glyphs
    (foreign-procedure "gsk_text_node_get_num_glyphs" (iptr) int))
  ;;
  (define gsk-text-node-get-offset
    (foreign-procedure "gsk_text_node_get_offset" (iptr) iptr))
  ;;
  (define gsk-text-node-has-color-glyphs
    (foreign-procedure "gsk_text_node_has_color_glyphs" (iptr) boolean))
  ;;
  (define gsk-texture-node-new
    (foreign-procedure "gsk_texture_node_new" (iptr iptr) iptr))
  ;;
  (define gsk-texture-node-get-texture
    (foreign-procedure "gsk_texture_node_get_texture" (iptr) iptr))
  ;;
  (define gsk-transform-node-new
    (foreign-procedure "gsk_transform_node_new" (iptr iptr) iptr))
  ;;
  (define gsk-transform-node-get-child
    (foreign-procedure "gsk_transform_node_get_child" (iptr) iptr))
  ;;
  (define gsk-transform-node-get-transform
    (foreign-procedure "gsk_transform_node_get_transform" (iptr) iptr))
  ;;
  (define gsk-serialization-error-quark
    (foreign-procedure "gsk_serialization_error_quark" () iptr))
  ;;
  (define gsk-value-dup-render-node
    (foreign-procedure "gsk_value_dup_render_node" (iptr) iptr))
  ;;
  (define gsk-value-get-render-node
    (foreign-procedure "gsk_value_get_render_node" (iptr) iptr))
  ;;
  (define gsk-value-set-render-node
    (foreign-procedure "gsk_value_set_render_node" (iptr iptr) void))
  ;;
  (define gsk-value-take-render-node
    (foreign-procedure "gsk_value_take_render_node" (iptr iptr) void))
  ;;
  (define gdk-app-launch-context-get-display
    (foreign-procedure "gdk_app_launch_context_get_display" (iptr) iptr))
  ;;
  (define gdk-app-launch-context-set-desktop
    (foreign-procedure "gdk_app_launch_context_set_desktop" (iptr int) void))
  ;;
  (define gdk-app-launch-context-set-icon
    (foreign-procedure "gdk_app_launch_context_set_icon" (iptr iptr) void))
  ;;
  (define gdk-app-launch-context-set-icon-name
    (foreign-procedure "gdk_app_launch_context_set_icon_name"
		       (iptr string) void))
  ;;
  (define gdk-app-launch-context-set-timestamp
    (foreign-procedure "gdk_app_launch_context_set_timestamp" (iptr int) void))
  ;;
  (define gdk-button-event-get-button
    (foreign-procedure "gdk_button_event_get_button" (iptr) int))
  ;;
  (define gdk-cairo-context-cairo-create
    (foreign-procedure "gdk_cairo_context_cairo_create" (iptr) iptr))
  ;;
  (define gdk-clipboard-get-content
    (foreign-procedure "gdk_clipboard_get_content" (iptr) iptr))
  ;;
  (define gdk-clipboard-get-display
    (foreign-procedure "gdk_clipboard_get_display" (iptr) iptr))
  ;;
  (define gdk-clipboard-get-formats
    (foreign-procedure "gdk_clipboard_get_formats" (iptr) iptr))
  ;;
  (define gdk-clipboard-is-local
    (foreign-procedure "gdk_clipboard_is_local" (iptr) boolean))
  ;;
  (define gdk-clipboard-read-async
    (foreign-procedure "gdk_clipboard_read_async"
		       (iptr string int iptr iptr iptr) void))
  ;;
  (define gdk-clipboard-read-finish
    (foreign-procedure "gdk_clipboard_read_finish"
		       (iptr iptr string iptr) iptr))
  ;;
  (define gdk-clipboard-read-text-async
    (foreign-procedure "gdk_clipboard_read_text_async"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gdk-clipboard-read-text-finish
    (foreign-procedure "gdk_clipboard_read_text_finish"
		       (iptr iptr iptr) string))
  ;;
  (define gdk-clipboard-read-texture-async
    (foreign-procedure "gdk_clipboard_read_texture_async"
		       (iptr iptr iptr iptr) void))
  ;;
  (define gdk-clipboard-read-texture-finish
    (foreign-procedure "gdk_clipboard_read_texture_finish"
		       (iptr iptr iptr) iptr))
  ;;
  (define gdk-clipboard-read-value-async
    (foreign-procedure "gdk_clipboard_read_value_async"
		       (iptr iptr int iptr iptr iptr) void))
  ;;
  (define gdk-clipboard-read-value-finish
    (foreign-procedure "gdk_clipboard_read_value_finish"
		       (iptr iptr iptr) iptr))
  ;;
  (define gdk-clipboard-set
    (foreign-procedure "gdk_clipboard_set" (iptr iptr) void))
  ;;
  (define gdk-clipboard-set-content
    (foreign-procedure "gdk_clipboard_set_content" (iptr iptr) boolean))
  ;;
  (define gdk-clipboard-set-text
    (foreign-procedure "gdk_clipboard_set_text" (iptr string) void))
  ;;
  (define gdk-clipboard-set-texture
    (foreign-procedure "gdk_clipboard_set_texture" (iptr iptr) void))
  ;;
  (define gdk-clipboard-set-valist
    (foreign-procedure "gdk_clipboard_set_valist" (iptr iptr iptr) void))
  ;;
  (define gdk-clipboard-set-value
    (foreign-procedure "gdk_clipboard_set_value" (iptr iptr) void))
  ;;
  (define gdk-clipboard-store-async
    (foreign-procedure "gdk_clipboard_store_async"
		       (iptr int iptr iptr iptr) void))
  ;;
  (define gdk-clipboard-store-finish
    (foreign-procedure "gdk_clipboard_store_finish" (iptr iptr iptr) boolean))
  ;;
  (define gdk-content-deserializer-get-cancellable
    (foreign-procedure "gdk_content_deserializer_get_cancellable" (iptr) iptr))
  ;;
  (define gdk-content-deserializer-get-gtype
    (foreign-procedure "gdk_content_deserializer_get_gtype" (iptr) iptr))
  ;;
  (define gdk-content-deserializer-get-input-stream
    (foreign-procedure "gdk_content_deserializer_get_input_stream" (iptr) iptr))
  ;;
  (define gdk-content-deserializer-get-mime-type
    (foreign-procedure "gdk_content_deserializer_get_mime_type" (iptr) string))
  ;;
  (define gdk-content-deserializer-get-priority
    (foreign-procedure "gdk_content_deserializer_get_priority" (iptr) int))
  ;;
  (define gdk-content-deserializer-get-task-data
    (foreign-procedure "gdk_content_deserializer_get_task_data" (iptr) iptr))
  ;;
  (define gdk-content-deserializer-get-user-data
    (foreign-procedure "gdk_content_deserializer_get_user_data" (iptr) iptr))
  ;;
  (define gdk-content-deserializer-get-value
    (foreign-procedure "gdk_content_deserializer_get_value" (iptr) iptr))
  ;;
  (define gdk-content-deserializer-return-error
    (foreign-procedure "gdk_content_deserializer_return_error"
		       (iptr iptr) void))
  ;;
  (define gdk-content-deserializer-return-success
    (foreign-procedure "gdk_content_deserializer_return_success" (iptr) void))
  ;;
  (define gdk-content-deserializer-set-task-data
    (foreign-procedure "gdk_content_deserializer_set_task_data"
		       (iptr iptr iptr) void))
  ;;
  (define gdk-crossing-event-get-detail
    (foreign-procedure "gdk_crossing_event_get_detail" (iptr) iptr))
  ;;
  (define gdk-crossing-event-get-focus
    (foreign-procedure "gdk_crossing_event_get_focus" (iptr) boolean))
  ;;
  (define gdk-crossing-event-get-mode
    (foreign-procedure "gdk_crossing_event_get_mode" (iptr) iptr))
  ;;
  (define gdk-cursor-new-from-name
    (foreign-procedure "gdk_cursor_new_from_name" (string iptr) iptr))
  ;;
  (define gdk-cursor-new-from-texture
    (foreign-procedure "gdk_cursor_new_from_texture" (iptr int int iptr) iptr))
  ;;
  (define gdk-cursor-get-fallback
    (foreign-procedure "gdk_cursor_get_fallback" (iptr) iptr))
  ;;
  (define gdk-cursor-get-hotspot-x
    (foreign-procedure "gdk_cursor_get_hotspot_x" (iptr) int))
  ;;
  (define gdk-cursor-get-hotspot-y
    (foreign-procedure "gdk_cursor_get_hotspot_y" (iptr) int))
  ;;
  (define gdk-cursor-get-name
    (foreign-procedure "gdk_cursor_get_name" (iptr) string))
  ;;
  (define gdk-cursor-get-texture
    (foreign-procedure "gdk_cursor_get_texture" (iptr) iptr))
  ;;
  (define gdk-device-get-caps-lock-state
    (foreign-procedure "gdk_device_get_caps_lock_state" (iptr) boolean))
  ;;
  (define gdk-device-get-device-tool
    (foreign-procedure "gdk_device_get_device_tool" (iptr) iptr))
  ;;
  (define gdk-device-get-direction
    (foreign-procedure "gdk_device_get_direction" (iptr) iptr))
  ;;
  (define gdk-device-get-display
    (foreign-procedure "gdk_device_get_display" (iptr) iptr))
  ;;
  (define gdk-device-get-has-cursor
    (foreign-procedure "gdk_device_get_has_cursor" (iptr) boolean))
  ;;
  (define gdk-device-get-modifier-state
    (foreign-procedure "gdk_device_get_modifier_state" (iptr) iptr))
  ;;
  (define gdk-device-get-name
    (foreign-procedure "gdk_device_get_name" (iptr) string))
  ;;
  (define gdk-device-get-num-lock-state
    (foreign-procedure "gdk_device_get_num_lock_state" (iptr) boolean))
  ;;
  (define gdk-device-get-num-touches
    (foreign-procedure "gdk_device_get_num_touches" (iptr) int))
  ;;
  (define gdk-device-get-product-id
    (foreign-procedure "gdk_device_get_product_id" (iptr) string))
  ;;
  (define gdk-device-get-scroll-lock-state
    (foreign-procedure "gdk_device_get_scroll_lock_state" (iptr) boolean))
  ;;
  (define gdk-device-get-seat
    (foreign-procedure "gdk_device_get_seat" (iptr) iptr))
  ;;
  (define gdk-device-get-source
    (foreign-procedure "gdk_device_get_source" (iptr) iptr))
  ;;
  (define gdk-device-get-surface-at-position
    (foreign-procedure "gdk_device_get_surface_at_position"
		       (iptr double double) iptr))
  ;;
  (define gdk-device-get-timestamp
    (foreign-procedure "gdk_device_get_timestamp" (iptr) int))
  ;;
  (define gdk-device-get-vendor-id
    (foreign-procedure "gdk_device_get_vendor_id" (iptr) string))
  ;;
  (define gdk-device-has-bidi-layouts
    (foreign-procedure "gdk_device_has_bidi_layouts" (iptr) boolean))
  ;;
  (define gdk-device-tool-get-axes
    (foreign-procedure "gdk_device_tool_get_axes" (iptr) iptr))
  ;;
  (define gdk-device-tool-get-hardware-id
    (foreign-procedure "gdk_device_tool_get_hardware_id" (iptr) int))
  ;;
  (define gdk-device-tool-get-serial
    (foreign-procedure "gdk_device_tool_get_serial" (iptr) int))
  ;;
  (define gdk-device-tool-get-tool-type
    (foreign-procedure "gdk_device_tool_get_tool_type" (iptr) iptr))
  ;;
  (define gdk-display-get-default
    (foreign-procedure "gdk_display_get_default" () iptr))
  ;;
  (define gdk-display-open
    (foreign-procedure "gdk_display_open" (string) iptr))
  ;;
  (define gdk-display-beep
    (foreign-procedure "gdk_display_beep" (iptr) void))
  ;;
  (define gdk-display-close
    (foreign-procedure "gdk_display_close" (iptr) void))
  ;;
  (define gdk-display-create-gl-context
    (foreign-procedure "gdk_display_create_gl_context" (iptr iptr) iptr))
  ;;
  (define gdk-display-device-is-grabbed
    (foreign-procedure "gdk_display_device_is_grabbed" (iptr iptr) boolean))
  ;;
  (define gdk-display-flush
    (foreign-procedure "gdk_display_flush" (iptr) void))
  ;;
  (define gdk-display-get-app-launch-context
    (foreign-procedure "gdk_display_get_app_launch_context" (iptr) iptr))
  ;;
  (define gdk-display-get-clipboard
    (foreign-procedure "gdk_display_get_clipboard" (iptr) iptr))
  ;;
  (define gdk-display-get-default-seat
    (foreign-procedure "gdk_display_get_default_seat" (iptr) iptr))
  ;;
  (define gdk-display-get-monitor-at-surface
    (foreign-procedure "gdk_display_get_monitor_at_surface" (iptr iptr) iptr))
  ;;
  (define gdk-display-get-monitors
    (foreign-procedure "gdk_display_get_monitors" (iptr) iptr))
  ;;
  (define gdk-display-get-name
    (foreign-procedure "gdk_display_get_name" (iptr) string))
  ;;
  (define gdk-display-get-primary-clipboard
    (foreign-procedure "gdk_display_get_primary_clipboard" (iptr) iptr))
  ;;
  (define gdk-display-get-setting
    (foreign-procedure "gdk_display_get_setting" (iptr string iptr) boolean))
  ;;
  (define gdk-display-get-startup-notification-id
    (foreign-procedure "gdk_display_get_startup_notification_id" (iptr) string))
  ;;
  (define gdk-display-is-closed
    (foreign-procedure "gdk_display_is_closed" (iptr) boolean))
  ;;
  (define gdk-display-is-composited
    (foreign-procedure "gdk_display_is_composited" (iptr) boolean))
  ;;
  (define gdk-display-is-rgba
    (foreign-procedure "gdk_display_is_rgba" (iptr) boolean))
  ;;
  (define gdk-display-list-seats
    (foreign-procedure "gdk_display_list_seats" (iptr) iptr))
  ;;
  (define gdk-display-map-keycode
    (foreign-procedure "gdk_display_map_keycode"
		       (iptr int iptr int int) boolean))
  ;;
  (define gdk-display-map-keyval
    (foreign-procedure "gdk_display_map_keyval" (iptr int iptr int) boolean))
  ;;
  (define gdk-display-notify-startup-complete
    (foreign-procedure "gdk_display_notify_startup_complete"
		       (iptr string) void))
  ;;
  (define gdk-display-prepare-gl
    (foreign-procedure "gdk_display_prepare_gl" (iptr iptr) boolean))
  ;;
  (define gdk-display-put-event
    (foreign-procedure "gdk_display_put_event" (iptr iptr) void))
  ;;
  (define gdk-display-supports-input-shapes
    (foreign-procedure "gdk_display_supports_input_shapes" (iptr) boolean))
  ;;
  (define gdk-display-sync
    (foreign-procedure "gdk_display_sync" (iptr) void))
  ;;
  (define gdk-display-translate-key
    (foreign-procedure "gdk_display_translate_key"
		       (iptr int iptr int int int int iptr) boolean))
  ;;
  (define gdk-display-manager-get
    (foreign-procedure "gdk_display_manager_get" () iptr))
  ;;
  (define gdk-display-manager-get-default-display
    (foreign-procedure "gdk_display_manager_get_default_display" (iptr) iptr))
  ;;
  (define gdk-display-manager-list-displays
    (foreign-procedure "gdk_display_manager_list_displays" (iptr) iptr))
  ;;
  (define gdk-display-manager-open-display
    (foreign-procedure "gdk_display_manager_open_display" (iptr string) iptr))
  ;;
  (define gdk-display-manager-set-default-display
    (foreign-procedure "gdk_display_manager_set_default_display"
		       (iptr iptr) void))
  ;;
  (define gdk-dnd-event-get-drop
    (foreign-procedure "gdk_dnd_event_get_drop" (iptr) iptr))
  ;;
  (define gdk-drag-begin
    (foreign-procedure "gdk_drag_begin"
		       (iptr iptr iptr iptr double double) iptr))
  ;;
  (define gdk-drag-drop-done
    (foreign-procedure "gdk_drag_drop_done" (iptr boolean) void))
  ;;
  (define gdk-drag-get-actions
    (foreign-procedure "gdk_drag_get_actions" (iptr) iptr))
  ;;
  (define gdk-drag-get-content
    (foreign-procedure "gdk_drag_get_content" (iptr) iptr))
  ;;
  (define gdk-drag-get-device
    (foreign-procedure "gdk_drag_get_device" (iptr) iptr))
  ;;
  (define gdk-drag-get-display
    (foreign-procedure "gdk_drag_get_display" (iptr) iptr))
  ;;
  (define gdk-drag-get-drag-surface
    (foreign-procedure "gdk_drag_get_drag_surface" (iptr) iptr))
  ;;
  (define gdk-drag-get-formats
    (foreign-procedure "gdk_drag_get_formats" (iptr) iptr))
  ;;
  (define gdk-drag-get-selected-action
    (foreign-procedure "gdk_drag_get_selected_action" (iptr) iptr))
  ;;
  (define gdk-drag-get-surface
    (foreign-procedure "gdk_drag_get_surface" (iptr) iptr))
  ;;
  (define gdk-drag-set-hotspot
    (foreign-procedure "gdk_drag_set_hotspot" (iptr int int) void))
  ;;
  (define gdk-draw-context-begin-frame
    (foreign-procedure "gdk_draw_context_begin_frame" (iptr iptr) void))
  ;;
  (define gdk-draw-context-end-frame
    (foreign-procedure "gdk_draw_context_end_frame" (iptr) void))
  ;;
  (define gdk-draw-context-get-display
    (foreign-procedure "gdk_draw_context_get_display" (iptr) iptr))
  ;;
  (define gdk-draw-context-get-frame-region
    (foreign-procedure "gdk_draw_context_get_frame_region" (iptr) iptr))
  ;;
  (define gdk-draw-context-get-surface
    (foreign-procedure "gdk_draw_context_get_surface" (iptr) iptr))
  ;;
  (define gdk-draw-context-is-in-frame
    (foreign-procedure "gdk_draw_context_is_in_frame" (iptr) boolean))
  ;;
  (define gdk-drop-finish
    (foreign-procedure "gdk_drop_finish" (iptr iptr) void))
  ;;
  (define gdk-drop-get-actions
    (foreign-procedure "gdk_drop_get_actions" (iptr) iptr))
  ;;
  (define gdk-drop-get-device
    (foreign-procedure "gdk_drop_get_device" (iptr) iptr))
  ;;
  (define gdk-drop-get-display
    (foreign-procedure "gdk_drop_get_display" (iptr) iptr))
  ;;
  (define gdk-drop-get-drag
    (foreign-procedure "gdk_drop_get_drag" (iptr) iptr))
  ;;
  (define gdk-drop-get-formats
    (foreign-procedure "gdk_drop_get_formats" (iptr) iptr))
  ;;
  (define gdk-drop-get-surface
    (foreign-procedure "gdk_drop_get_surface" (iptr) iptr))
  ;;
  (define gdk-drop-read-async
    (foreign-procedure "gdk_drop_read_async"
		       (iptr string int iptr iptr iptr) void))
  ;;
  (define gdk-drop-read-finish
    (foreign-procedure "gdk_drop_read_finish" (iptr iptr string iptr) iptr))
  ;;
  (define gdk-drop-read-value-async
    (foreign-procedure "gdk_drop_read_value_async"
		       (iptr iptr int iptr iptr iptr) void))
  ;;
  (define gdk-drop-read-value-finish
    (foreign-procedure "gdk_drop_read_value_finish" (iptr iptr iptr) iptr))
  ;;
  (define gdk-drop-status
    (foreign-procedure "gdk_drop_status" (iptr iptr iptr) void))
  ;;
  (define gdk-events-get-angle
    (foreign-procedure "gdk_events_get_angle" (iptr iptr double) boolean))
  ;;
  (define gdk-events-get-center
    (foreign-procedure "gdk_events_get_center"
		       (iptr iptr double double) boolean))
  ;;
  (define gdk-events-get-distance
    (foreign-procedure "gdk_events_get_distance" (iptr iptr double) boolean))
  ;;
  (define gdk-event-get-axes
    (foreign-procedure "gdk_event_get_axes" (iptr double int) boolean))
  ;;
  (define gdk-event-get-axis
    (foreign-procedure "gdk_event_get_axis" (iptr iptr double) boolean))
  ;;
  (define gdk-event-get-device
    (foreign-procedure "gdk_event_get_device" (iptr) iptr))
  ;;
  (define gdk-event-get-device-tool
    (foreign-procedure "gdk_event_get_device_tool" (iptr) iptr))
  ;;
  (define gdk-event-get-display
    (foreign-procedure "gdk_event_get_display" (iptr) iptr))
  ;;
  (define gdk-event-get-event-sequence
    (foreign-procedure "gdk_event_get_event_sequence" (iptr) iptr))
  ;;
  (define gdk-event-get-event-type
    (foreign-procedure "gdk_event_get_event_type" (iptr) iptr))
  ;;
  (define gdk-event-get-history
    (foreign-procedure "gdk_event_get_history" (iptr int) iptr))
  ;;
  (define gdk-event-get-modifier-state
    (foreign-procedure "gdk_event_get_modifier_state" (iptr) iptr))
  ;;
  (define gdk-event-get-pointer-emulated
    (foreign-procedure "gdk_event_get_pointer_emulated" (iptr) boolean))
  ;;
  (define gdk-event-get-position
    (foreign-procedure "gdk_event_get_position" (iptr double double) boolean))
  ;;
  (define gdk-event-get-seat
    (foreign-procedure "gdk_event_get_seat" (iptr) iptr))
  ;;
  (define gdk-event-get-surface
    (foreign-procedure "gdk_event_get_surface" (iptr) iptr))
  ;;
  (define gdk-event-get-time
    (foreign-procedure "gdk_event_get_time" (iptr) int))
  ;;
  (define gdk-event-ref
    (foreign-procedure "gdk_event_ref" (iptr) iptr))
  ;;
  (define gdk-event-triggers-context-menu
    (foreign-procedure "gdk_event_triggers_context_menu" (iptr) boolean))
  ;;
  (define gdk-event-unref
    (foreign-procedure "gdk_event_unref" (iptr) void))
  ;;
  (define gdk-focus-event-get-in
    (foreign-procedure "gdk_focus_event_get_in" (iptr) boolean))
  ;;
  (define gdk-frame-clock-begin-updating
    (foreign-procedure "gdk_frame_clock_begin_updating" (iptr) void))
  ;;
  (define gdk-frame-clock-end-updating
    (foreign-procedure "gdk_frame_clock_end_updating" (iptr) void))
  ;;
  (define gdk-frame-clock-get-current-timings
    (foreign-procedure "gdk_frame_clock_get_current_timings" (iptr) iptr))
  ;;
  (define gdk-frame-clock-get-fps
    (foreign-procedure "gdk_frame_clock_get_fps" (iptr) double))
  ;;
  (define gdk-frame-clock-get-frame-counter
    (foreign-procedure "gdk_frame_clock_get_frame_counter" (iptr) int))
  ;;
  (define gdk-frame-clock-get-frame-time
    (foreign-procedure "gdk_frame_clock_get_frame_time" (iptr) int))
  ;;
  (define gdk-frame-clock-get-history-start
    (foreign-procedure "gdk_frame_clock_get_history_start" (iptr) int))
  ;;
  (define gdk-frame-clock-get-refresh-info
    (foreign-procedure "gdk_frame_clock_get_refresh_info"
		       (iptr int int int) void))
  ;;
  (define gdk-frame-clock-get-timings
    (foreign-procedure "gdk_frame_clock_get_timings" (iptr int) iptr))
  ;;
  (define gdk-frame-clock-request-phase
    (foreign-procedure "gdk_frame_clock_request_phase" (iptr iptr) void))
  ;;
  (define gdk-gl-context-clear-current
    (foreign-procedure "gdk_gl_context_clear_current" () void))
  ;;
  (define gdk-gl-context-get-current
    (foreign-procedure "gdk_gl_context_get_current" () iptr))
  ;;
  (define gdk-gl-context-get-allowed-apis
    (foreign-procedure "gdk_gl_context_get_allowed_apis" (iptr) iptr))
  ;;
  (define gdk-gl-context-get-api
    (foreign-procedure "gdk_gl_context_get_api" (iptr) iptr))
  ;;
  (define gdk-gl-context-get-debug-enabled
    (foreign-procedure "gdk_gl_context_get_debug_enabled" (iptr) boolean))
  ;;
  (define gdk-gl-context-get-display
    (foreign-procedure "gdk_gl_context_get_display" (iptr) iptr))
  ;;
  (define gdk-gl-context-get-forward-compatible
    (foreign-procedure "gdk_gl_context_get_forward_compatible" (iptr) boolean))
  ;;
  (define gdk-gl-context-get-required-version
    (foreign-procedure "gdk_gl_context_get_required_version"
		       (iptr int int) void))
  ;;
  (define gdk-gl-context-get-surface
    (foreign-procedure "gdk_gl_context_get_surface" (iptr) iptr))
  ;;
  (define gdk-gl-context-get-use-es
    (foreign-procedure "gdk_gl_context_get_use_es" (iptr) boolean))
  ;;
  (define gdk-gl-context-get-version
    (foreign-procedure "gdk_gl_context_get_version" (iptr int int) void))
  ;;
  (define gdk-gl-context-is-legacy
    (foreign-procedure "gdk_gl_context_is_legacy" (iptr) boolean))
  ;;
  (define gdk-gl-context-is-shared
    (foreign-procedure "gdk_gl_context_is_shared" (iptr iptr) boolean))
  ;;
  (define gdk-gl-context-make-current
    (foreign-procedure "gdk_gl_context_make_current" (iptr) void))
  ;;
  (define gdk-gl-context-realize
    (foreign-procedure "gdk_gl_context_realize" (iptr iptr) boolean))
  ;;
  (define gdk-gl-context-set-allowed-apis
    (foreign-procedure "gdk_gl_context_set_allowed_apis" (iptr iptr) void))
  ;;
  (define gdk-gl-context-set-debug-enabled
    (foreign-procedure "gdk_gl_context_set_debug_enabled" (iptr boolean) void))
  ;;
  (define gdk-gl-context-set-forward-compatible
    (foreign-procedure "gdk_gl_context_set_forward_compatible"
		       (iptr boolean) void))
  ;;
  (define gdk-gl-context-set-required-version
    (foreign-procedure "gdk_gl_context_set_required_version"
		       (iptr int int) void))
  ;;
  (define gdk-gl-context-set-use-es
    (foreign-procedure "gdk_gl_context_set_use_es" (iptr int) void))
  ;;
  (define gdk-gl-texture-new
    (foreign-procedure "gdk_gl_texture_new"
		       (iptr int int int iptr iptr) iptr))
  ;;
  (define gdk-gl-texture-release
    (foreign-procedure "gdk_gl_texture_release" (iptr) void))
  ;;
  (define gdk-grab-broken-event-get-grab-surface
    (foreign-procedure "gdk_grab_broken_event_get_grab_surface" (iptr) iptr))
  ;;
  (define gdk-grab-broken-event-get-implicit
    (foreign-procedure "gdk_grab_broken_event_get_implicit" (iptr) boolean))
  ;;
  (define gdk-key-event-get-consumed-modifiers
    (foreign-procedure "gdk_key_event_get_consumed_modifiers" (iptr) iptr))
  ;;
  (define gdk-key-event-get-keycode
    (foreign-procedure "gdk_key_event_get_keycode" (iptr) int))
  ;;
  (define gdk-key-event-get-keyval
    (foreign-procedure "gdk_key_event_get_keyval" (iptr) int))
  ;;
  (define gdk-key-event-get-layout
    (foreign-procedure "gdk_key_event_get_layout" (iptr) int))
  ;;
  (define gdk-key-event-get-level
    (foreign-procedure "gdk_key_event_get_level" (iptr) int))
  ;;
  (define gdk-key-event-get-match
    (foreign-procedure "gdk_key_event_get_match" (iptr int iptr) boolean))
  ;;
  (define gdk-key-event-is-modifier
    (foreign-procedure "gdk_key_event_is_modifier" (iptr) boolean))
  ;;
  (define gdk-key-event-matches
    (foreign-procedure "gdk_key_event_matches" (iptr int iptr) iptr))
  ;;
  (define gdk-memory-texture-new
    (foreign-procedure "gdk_memory_texture_new" (int int iptr iptr iptr) iptr))
  ;;
  (define gdk-monitor-get-connector
    (foreign-procedure "gdk_monitor_get_connector" (iptr) string))
  ;;
  (define gdk-monitor-get-display
    (foreign-procedure "gdk_monitor_get_display" (iptr) iptr))
  ;;
  (define gdk-monitor-get-geometry
    (foreign-procedure "gdk_monitor_get_geometry" (iptr iptr) void))
  ;;
  (define gdk-monitor-get-height-mm
    (foreign-procedure "gdk_monitor_get_height_mm" (iptr) int))
  ;;
  (define gdk-monitor-get-manufacturer
    (foreign-procedure "gdk_monitor_get_manufacturer" (iptr) string))
  ;;
  (define gdk-monitor-get-model
    (foreign-procedure "gdk_monitor_get_model" (iptr) string))
  ;;
  (define gdk-monitor-get-refresh-rate
    (foreign-procedure "gdk_monitor_get_refresh_rate" (iptr) int))
  ;;
  (define gdk-monitor-get-scale-factor
    (foreign-procedure "gdk_monitor_get_scale_factor" (iptr) int))
  ;;
  (define gdk-monitor-get-subpixel-layout
    (foreign-procedure "gdk_monitor_get_subpixel_layout" (iptr) iptr))
  ;;
  (define gdk-monitor-get-width-mm
    (foreign-procedure "gdk_monitor_get_width_mm" (iptr) int))
  ;;
  (define gdk-monitor-is-valid
    (foreign-procedure "gdk_monitor_is_valid" (iptr) boolean))
  ;;
  (define gdk-pad-event-get-axis-value
    (foreign-procedure "gdk_pad_event_get_axis_value" (iptr int double) void))
  ;;
  (define gdk-pad-event-get-button
    (foreign-procedure "gdk_pad_event_get_button" (iptr) int))
  ;;
  (define gdk-pad-event-get-group-mode
    (foreign-procedure "gdk_pad_event_get_group_mode" (iptr int int) void))
  ;;
  (define gdk-scroll-event-get-deltas
    (foreign-procedure "gdk_scroll_event_get_deltas"
		       (iptr double double) void))
  ;;
  (define gdk-scroll-event-get-direction
    (foreign-procedure "gdk_scroll_event_get_direction" (iptr) iptr))
  ;;
  (define gdk-scroll-event-get-unit
    (foreign-procedure "gdk_scroll_event_get_unit" (iptr) iptr))
  ;;
  (define gdk-scroll-event-is-stop
    (foreign-procedure "gdk_scroll_event_is_stop" (iptr) boolean))
  ;;
  (define gdk-seat-get-capabilities
    (foreign-procedure "gdk_seat_get_capabilities" (iptr) iptr))
  ;;
  (define gdk-seat-get-devices
    (foreign-procedure "gdk_seat_get_devices" (iptr iptr) iptr))
  ;;
  (define gdk-seat-get-display
    (foreign-procedure "gdk_seat_get_display" (iptr) iptr))
  ;;
  (define gdk-seat-get-keyboard
    (foreign-procedure "gdk_seat_get_keyboard" (iptr) iptr))
  ;;
  (define gdk-seat-get-pointer
    (foreign-procedure "gdk_seat_get_pointer" (iptr) iptr))
  ;;
  (define gdk-seat-get-tools
    (foreign-procedure "gdk_seat_get_tools" (iptr) iptr))
  ;;
  (define gdk-surface-new-popup
    (foreign-procedure "gdk_surface_new_popup" (iptr boolean) iptr))
  ;;
  (define gdk-surface-new-toplevel
    (foreign-procedure "gdk_surface_new_toplevel" (iptr) iptr))
  ;;
  (define gdk-surface-beep
    (foreign-procedure "gdk_surface_beep" (iptr) void))
  ;;
  (define gdk-surface-create-cairo-context
    (foreign-procedure "gdk_surface_create_cairo_context" (iptr) iptr))
  ;;
  (define gdk-surface-create-gl-context
    (foreign-procedure "gdk_surface_create_gl_context" (iptr iptr) iptr))
  ;;
  (define gdk-surface-create-similar-surface
    (foreign-procedure "gdk_surface_create_similar_surface"
		       (iptr iptr int int) iptr))
  ;;
  (define gdk-surface-create-vulkan-context
    (foreign-procedure "gdk_surface_create_vulkan_context" (iptr iptr) iptr))
  ;;
  (define gdk-surface-destroy
    (foreign-procedure "gdk_surface_destroy" (iptr) void))
  ;;
  (define gdk-surface-get-cursor
    (foreign-procedure "gdk_surface_get_cursor" (iptr) iptr))
  ;;
  (define gdk-surface-get-device-cursor
    (foreign-procedure "gdk_surface_get_device_cursor" (iptr iptr) iptr))
  ;;
  (define gdk-surface-get-device-position
    (foreign-procedure "gdk_surface_get_device_position"
		       (iptr iptr double double iptr) boolean))
  ;;
  (define gdk-surface-get-display
    (foreign-procedure "gdk_surface_get_display" (iptr) iptr))
  ;;
  (define gdk-surface-get-frame-clock
    (foreign-procedure "gdk_surface_get_frame_clock" (iptr) iptr))
  ;;
  (define gdk-surface-get-height
    (foreign-procedure "gdk_surface_get_height" (iptr) int))
  ;;
  (define gdk-surface-get-mapped
    (foreign-procedure "gdk_surface_get_mapped" (iptr) boolean))
  ;;
  (define gdk-surface-get-scale-factor
    (foreign-procedure "gdk_surface_get_scale_factor" (iptr) int))
  ;;
  (define gdk-surface-get-width
    (foreign-procedure "gdk_surface_get_width" (iptr) int))
  ;;
  (define gdk-surface-hide
    (foreign-procedure "gdk_surface_hide" (iptr) void))
  ;;
  (define gdk-surface-is-destroyed
    (foreign-procedure "gdk_surface_is_destroyed" (iptr) boolean))
  ;;
  (define gdk-surface-queue-render
    (foreign-procedure "gdk_surface_queue_render" (iptr) void))
  ;;
  (define gdk-surface-request-layout
    (foreign-procedure "gdk_surface_request_layout" (iptr) void))
  ;;
  (define gdk-surface-set-cursor
    (foreign-procedure "gdk_surface_set_cursor" (iptr iptr) void))
  ;;
  (define gdk-surface-set-device-cursor
    (foreign-procedure "gdk_surface_set_device_cursor" (iptr iptr iptr) void))
  ;;
  (define gdk-surface-set-input-region
    (foreign-procedure "gdk_surface_set_input_region" (iptr iptr) void))
  ;;
  (define gdk-surface-set-opaque-region
    (foreign-procedure "gdk_surface_set_opaque_region" (iptr iptr) void))
  ;;
  (define gdk-surface-translate-coordinates
    (foreign-procedure "gdk_surface_translate_coordinates"
		       (iptr iptr double double) boolean))
  ;;
  (define gdk-texture-new-for-pixbuf
    (foreign-procedure "gdk_texture_new_for_pixbuf" (iptr) iptr))
  ;;
  (define gdk-texture-new-from-bytes
    (foreign-procedure "gdk_texture_new_from_bytes" (iptr iptr) iptr))
  ;;
  (define gdk-texture-new-from-file
    (foreign-procedure "gdk_texture_new_from_file" (iptr iptr) iptr))
  ;;
  (define gdk-texture-new-from-filename
    (foreign-procedure "gdk_texture_new_from_filename" (iptr iptr) iptr))
  ;;
  (define gdk-texture-new-from-resource
    (foreign-procedure "gdk_texture_new_from_resource" (string) iptr))
  ;;
  (define gdk-texture-download
    (foreign-procedure "gdk_texture_download" (iptr iptr iptr) void))
  ;;
  (define gdk-texture-get-height
    (foreign-procedure "gdk_texture_get_height" (iptr) int))
  ;;
  (define gdk-texture-get-width
    (foreign-procedure "gdk_texture_get_width" (iptr) int))
  ;;
  (define gdk-texture-save-to-png
    (foreign-procedure "gdk_texture_save_to_png" (iptr iptr) boolean))
  ;;
  (define gdk-texture-save-to-png-bytes
    (foreign-procedure "gdk_texture_save_to_png_bytes" (iptr) iptr))
  ;;
  (define gdk-texture-save-to-tiff
    (foreign-procedure "gdk_texture_save_to_tiff" (iptr string) boolean))
  ;;
  (define gdk-texture-save-to-tiff-bytes
    (foreign-procedure "gdk_texture_save_to_tiff_bytes" (iptr) iptr))
  ;;
  (define gdk-touch-event-get-emulating-pointer
    (foreign-procedure "gdk_touch_event_get_emulating_pointer" (iptr) boolean))
  ;;
  (define gdk-touchpad-event-get-deltas
    (foreign-procedure "gdk_touchpad_event_get_deltas"
		       (iptr double double) void))
  ;;
  (define gdk-touchpad-event-get-gesture-phase
    (foreign-procedure "gdk_touchpad_event_get_gesture_phase" (iptr) iptr))
  ;;
  (define gdk-touchpad-event-get-n-fingers
    (foreign-procedure "gdk_touchpad_event_get_n_fingers" (iptr) int))
  ;;
  (define gdk-touchpad-event-get-pinch-angle-delta
    (foreign-procedure "gdk_touchpad_event_get_pinch_angle_delta"
		       (iptr) double))
  ;;
  (define gdk-touchpad-event-get-pinch-scale
    (foreign-procedure "gdk_touchpad_event_get_pinch_scale" (iptr) double))
  ;;
  
  
  
  ;;;;
  ;;;;
  (define GTK-ALIGN-CENTER 3)
  (define GTK-ORIENTATION-HORIZONTAL 0)
  (define GTK-ORIENTATION-VERTICAL 1)
  ;;
  (define GSK-BLEND-MODE-DEFAULT 0)
  (define GSK-BLEND-MODE-MULTIPLY 1)
  (define GSK-BLEND-MODE-SCREEN 2)
  (define GSK-BLEND-MODE-OVERLAY 3)
  (define GSK-BLEND-MODE-DARKEN 4)
  (define GSK-BLEND-MODE-LIGHTEN 5)
  (define GSK-BLEND-MODE-COLOR-DODGE 6)
  (define GSK-BLEND-MODE-COLOR-BURN 7)
  (define GSK-BLEND-MODE-HARD-LIGHT 8)
  (define GSK-BLEND-MODE-SOFT-LIGHT 9)
  (define GSK-BLEND-MODE-DEFFERENCE 10)
  (define GSK-BLEND-MODE-EXCLUSION 11)
  (define GSK-BLEND-MODE-COLOR 12)
  (define GSK-BLEND-MODE-HUE 13)
  (define GSK-BLEND-MODE-SATURATION 14)
  (define GSK-BLEND-MODE-LUMINOSITY 15)
  (define GSK-CORNER-TOP-LEFT 0)
  (define GSK-CORNER-TOP-RIGHT 1)
  (define GSK-CORNER-BOTTOM-RIGHT 2)
  (define GSK-CORNER-BOTTOM-LEFT 3)
  (define GSK-GL-UNIFORM-TYPE-NONE 0)
  (define GSK-GL-UNIFORM-TYPE-FLOAT 1)
  (define GSK-GL-UNIFORM-TYPE-INT 2)
  (define GSK-GL-UNIFORM-TYPE-UINT 3)
  (define GSK-GL-UNIFORM-TYPE-BOOL 4)
  (define GSK-GL-UNIFORM-TYPE-VEC2 5)
  (define GSK-GL-UNIFORM-TYPE-VEC3 6)
  (define GSK-GL-UNIFORM-TYPE-VEC4 7)
  (define GSK-NOT-A-RENDER-NODE 0)
  (define GSK-CONTAINER-NODE 1)
  (define GSK-CAIRO-NODE 2)
  (define GSK-COLOR-NODE 3)
  (define GSK-LINEAR-GRADIENT-NODE 4)
  (define GSK-REPEATING-LINEAR-GRADIENT-NODE 5)
  (define GSK-RADIAL-GRADIENT-NODE 6)
  (define GSK-REPEATING-RADIAL-GRADIENT-NODE 7)
  (define GSK-CONIT-GRADIENT-NODE 8)
  (define GSK-BORDER-NODE 9)
  (define GSK-TEXTURE-NODE 10)
  (define GSK-INSET-SHADOW-NODE 11)
  (define GSK-OUTSET-SHADOW-NODE 12)
  (define GSK-TRANSFORM-NODE 13)
  (define GSK-OPACITY-NODE 14)
  (define GSK-COLOR-MATRIX-NODE 15)
  (define GSK-REPEAT-NODE 16)
  (define GSK-CLIP-NODE 17)
  (define GSK-ROUNDED-CLIP-NODE 18)
  (define GSK-SHADOW-NODE 19)
  (define GSK-BLEND-NODE 20)
  (define GSK-CROSS-FADE-NODE 21)
  (define GSK-TEXT-NODE 22)
  (define GSK-BLUR-NODE 23)
  (define GSK-DEBUG-NODE 24)
  (define GSK-GL-SHADER-NODE 25)
  (define GSK-SCALING-FILTER-LINEAR 0)
  (define GSK-SCALING-FILTER-NEAREST 1)
  (define GSK-SCALING-FILTER-TRILINEAR 2)
  (define GSK-TRANSFORM-CATEGORY-UNKNOWN 0)
  (define GSK-TRANSFORM-CATEGORY-ANY 1)
  (define GSK-TRANSFORM-CATEGORY-3D 2)
  (define GSK-TRANSFORM-CATEGORY-2D 3)
  (define GSK-TRANSFORM-CATEGORY-2D-AFFINE 4)
  (define GSK-TRANSFORM-CATEGORY-2D-TRANSLATE 5)
  (define GSK-TRANSFORM-CATEGORY-IDENTITY 6)
  (define GSK-SERIALIZATION-UNSUPPORTED-FORMAT 0)
  (define GSK-SERIALIZATION-UNSUPPORTED-VERSION 1)
  (define GSK-SERIALIZATION-UNSUPPORTED-DATA 2)



  ;;
  (define NULL 0))
