resource "azuredevops_workitemtrackingprocess_page" "workitemtrackingprocess_pages" {
  for_each = var.workitemtrackingprocess_pages

  label             = each.value.label
  process_id        = each.value.process_id
  work_item_type_id = each.value.work_item_type_id
  order             = each.value.order
  visible           = each.value.visible

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

