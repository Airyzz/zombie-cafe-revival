.class Landroid/support/v4/util/ArrayMap$1;
.super Landroid/support/v4/util/MapCollections;


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/support/v4/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    iget-object v0, v0, Landroid/support/v4/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    iget v0, v0, Landroid/support/v4/util/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/util/ArrayMap$1;->this$0:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
