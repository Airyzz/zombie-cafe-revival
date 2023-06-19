.class final Lcom/capcom/billing/p;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:[Lcom/capcom/billing/SmurfsBilling$CatalogEntry;

.field private b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/capcom/billing/SmurfsBilling$CatalogEntry;)V
    .locals 2

    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/capcom/billing/p;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/capcom/billing/p;->a:[Lcom/capcom/billing/SmurfsBilling$CatalogEntry;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/capcom/billing/SmurfsBilling;->b:I

    if-lt v0, v1, :cond_0

    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/capcom/billing/p;->setDropDownViewResource(I)V

    return-void

    :cond_0
    sget-object v1, Lcom/capcom/billing/SmurfsBilling;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/capcom/billing/p;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/p;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/capcom/billing/p;->notifyDataSetChanged()V

    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/capcom/billing/p;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public final isEnabled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/capcom/billing/p;->a:[Lcom/capcom/billing/SmurfsBilling$CatalogEntry;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/capcom/billing/SmurfsBilling$CatalogEntry;->managed:Lcom/capcom/billing/SmurfsBilling$Managed;

    sget-object v2, Lcom/capcom/billing/SmurfsBilling$Managed;->MANAGED:Lcom/capcom/billing/SmurfsBilling$Managed;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/capcom/billing/p;->b:Ljava/util/Set;

    iget-object v0, v0, Lcom/capcom/billing/SmurfsBilling$CatalogEntry;->sku:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
