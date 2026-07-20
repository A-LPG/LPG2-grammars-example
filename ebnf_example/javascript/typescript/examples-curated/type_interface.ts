// Interface and type alias composition.
interface Item {
    id: number;
    name: string;
}
type ItemId = number;
function getId(item: Item): ItemId {
    return item.id;
}
