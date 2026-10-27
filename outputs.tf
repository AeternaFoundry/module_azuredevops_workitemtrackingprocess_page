output "workitemtrackingprocess_pages_id" {
  description = "Map of id values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.id }
}
output "workitemtrackingprocess_pages_label" {
  description = "Map of label values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.label }
}
output "workitemtrackingprocess_pages_order" {
  description = "Map of order values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.order }
}
output "workitemtrackingprocess_pages_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.process_id }
}
output "workitemtrackingprocess_pages_sections" {
  description = "Map of sections values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.sections }
}
output "workitemtrackingprocess_pages_visible" {
  description = "Map of visible values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.visible }
}
output "workitemtrackingprocess_pages_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.work_item_type_id }
}

