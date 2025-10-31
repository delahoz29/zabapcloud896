define hierarchy ZI_CDS_22_896

  as parent child hierarchy(
    source ZI_CDS_21_896
    child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      Employee
      multiple parents allowed
      orphans ignore 
      cycles breakup
      cache on
  )
{
  Employee,
  Manager,
  Name,
  $node.parent_id as ParentId,
  $node.node_id as NodeId,
  $node.hierarchy_is_cycle as HiCycle,
  $node.hierarchy_is_orphan as Hiorphan,
  $node.hierarchy_level as HiLevel,
  $node.hierarchy_parent_rank as HiParentRank,
  $node.hierarchy_rank as HiRank,
  $node.hierarchy_tree_size as HiTreeSize
  
  
  
}
