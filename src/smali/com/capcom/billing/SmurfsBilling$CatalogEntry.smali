.class public Lcom/capcom/billing/SmurfsBilling$CatalogEntry;
.super Ljava/lang/Object;


# instance fields
.field public managed:Lcom/capcom/billing/SmurfsBilling$Managed;

.field public nameId:Ljava/lang/String;

.field public sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/SmurfsBilling$Managed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capcom/billing/SmurfsBilling$CatalogEntry;->sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/capcom/billing/SmurfsBilling$CatalogEntry;->nameId:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/billing/SmurfsBilling$CatalogEntry;->managed:Lcom/capcom/billing/SmurfsBilling$Managed;

    return-void
.end method
