output "workitemtrackingprocess_pages_id" {
  description = "Map of id values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_pages_label" {
  description = "Map of label values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no label are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.label if v.label != null && length(v.label) > 0 }
}
output "workitemtrackingprocess_pages_order" {
  description = "Map of order values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no order are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.order if v.order != null }
}
output "workitemtrackingprocess_pages_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no process_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_pages_sections" {
  description = "Map of sections values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no sections are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.sections if v.sections != null && length(v.sections) > 0 }
}
output "workitemtrackingprocess_pages_visible" {
  description = "Map of visible values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no visible are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.visible if v.visible != null }
}
output "workitemtrackingprocess_pages_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_pages, keyed the same as var.workitemtrackingprocess_pages except keys with no work_item_type_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_page.workitemtrackingprocess_pages : k => v.work_item_type_id if v.work_item_type_id != null && length(v.work_item_type_id) > 0 }
}

