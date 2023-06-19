.class public Lcom/capcom/billing/SmurfsBilling;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static a:Ljava/lang/String;

.field static b:[Ljava/lang/String;

.field static c:I

.field private static p:[Lcom/capcom/billing/am;


# instance fields
.field private d:Lcom/capcom/billing/ao;

.field private e:Landroid/os/Handler;

.field private f:Lcom/capcom/billing/BillingService;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/SimpleCursorAdapter;

.field private l:Lcom/capcom/billing/aa;

.field private m:Landroid/database/Cursor;

.field private n:Ljava/util/Set;

.field private o:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/capcom/billing/al;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x20

    const-string v0, "EVoaS4IPpC9Q6Xhv5RsgmoX/0p9JWas2ifBzCaz5eHifVoNTVdh/7Iqk3x/Rnr7GHSLVmNTpdhdy+/E5aj2AjHuIOL6v"

    sput-object v0, Lcom/capcom/billing/SmurfsBilling;->a:Ljava/lang/String;

    new-array v0, v1, [Lcom/capcom/billing/am;

    sput-object v0, Lcom/capcom/billing/SmurfsBilling;->p:[Lcom/capcom/billing/am;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/billing/SmurfsBilling;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/capcom/billing/SmurfsBilling;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->n:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->o:Ljava/lang/String;

    return-void
.end method

.method private a(II)Landroid/app/Dialog;
    .locals 5

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmurfsBilling"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/capcom/billing/ag;

    invoke-direct {v4, p0}, Lcom/capcom/billing/ag;-><init>(Lcom/capcom/billing/SmurfsBilling;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08002a

    new-instance v4, Lcom/capcom/billing/ah;

    invoke-direct {v4, p0, v0}, Lcom/capcom/billing/ah;-><init>(Lcom/capcom/billing/SmurfsBilling;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%lang%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%region%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/SmurfsBilling;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capcom/billing/SmurfsBilling;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/capcom/billing/SmurfsBilling;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/capcom/billing/SmurfsBilling;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v2, 0x2

    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->i:Landroid/widget/TextView;

    new-instance v0, Lcom/capcom/billing/al;

    sget-object v1, Lcom/capcom/billing/SmurfsBilling;->p:[Lcom/capcom/billing/am;

    invoke-direct {v0, p0, v1}, Lcom/capcom/billing/al;-><init>(Landroid/content/Context;[Lcom/capcom/billing/am;)V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->s:Lcom/capcom/billing/al;

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->l:Lcom/capcom/billing/aa;

    invoke-virtual {v0}, Lcom/capcom/billing/aa;->b()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->m:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->m:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->startManagingCursor(Landroid/database/Cursor;)V

    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "quantity"

    aput-object v1, v4, v0

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030005

    iget-object v3, p0, Lcom/capcom/billing/SmurfsBilling;->m:Landroid/database/Cursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->k:Landroid/widget/SimpleCursorAdapter;

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/capcom/billing/SmurfsBilling;->k:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0027
        0x7f0b0028
    .end array-data
.end method

.method private c()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030003

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0b001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/capcom/billing/SmurfsBilling;->o:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/capcom/billing/SmurfsBilling;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080030

    new-instance v3, Lcom/capcom/billing/ai;

    invoke-direct {v3, p0, v0}, Lcom/capcom/billing/ai;-><init>(Lcom/capcom/billing/SmurfsBilling;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080031

    new-instance v2, Lcom/capcom/billing/aj;

    invoke-direct {v2, p0}, Lcom/capcom/billing/aj;-><init>(Lcom/capcom/billing/SmurfsBilling;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/capcom/billing/ak;

    invoke-direct {v0, p0}, Lcom/capcom/billing/ak;-><init>(Lcom/capcom/billing/SmurfsBilling;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->l:Lcom/capcom/billing/aa;

    invoke-virtual {v0}, Lcom/capcom/billing/aa;->a()V

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    invoke-virtual {v0}, Lcom/capcom/billing/BillingService;->b()V

    invoke-virtual {p0}, Lcom/capcom/billing/SmurfsBilling;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const-string v0, "SmurfsBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buying: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/billing/SmurfsBilling;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/billing/SmurfsBilling;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    iget-object v1, p0, Lcom/capcom/billing/SmurfsBilling;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/billing/SmurfsBilling;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/capcom/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/capcom/billing/SmurfsBilling;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/capcom/billing/SmurfsBilling;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "InApp Billing"

    const-string v2, "Extra data from smurfs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "============="

    const-string v2, "======================"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string v0, "NumberOfItems"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/capcom/billing/SmurfsBilling;->c:I

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/capcom/billing/SmurfsBilling;->c:I

    if-lt v0, v2, :cond_2

    :cond_0
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->setContentView(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->e:Landroid/os/Handler;

    new-instance v0, Lcom/capcom/billing/ao;

    iget-object v1, p0, Lcom/capcom/billing/SmurfsBilling;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/capcom/billing/ao;-><init>(Lcom/capcom/billing/SmurfsBilling;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->d:Lcom/capcom/billing/ao;

    const-string v0, "IAP"

    const-string v1, "added smurfs purchase observer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/capcom/billing/BillingService;

    invoke-direct {v0}, Lcom/capcom/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    invoke-virtual {v0, p0}, Lcom/capcom/billing/BillingService;->a(Landroid/content/Context;)V

    const-string v0, "IAP"

    const-string v1, "created billing service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/capcom/billing/aa;

    invoke-direct {v0, p0}, Lcom/capcom/billing/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->l:Lcom/capcom/billing/aa;

    invoke-direct {p0}, Lcom/capcom/billing/SmurfsBilling;->b()V

    const-string v0, "IAP"

    const-string v1, "setup purchase data base and widgets"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->d:Lcom/capcom/billing/ao;

    invoke-static {v0}, Lcom/capcom/billing/ad;->a(Lcom/capcom/billing/ac;)V

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    invoke-virtual {v0}, Lcom/capcom/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->showDialog(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/capcom/billing/SmurfsBilling;->b:[Ljava/lang/String;

    aput-object v2, v3, v0

    sget-object v3, Lcom/capcom/billing/SmurfsBilling;->p:[Lcom/capcom/billing/am;

    new-instance v4, Lcom/capcom/billing/am;

    sget-object v5, Lcom/capcom/billing/SmurfsBilling;->b:[Ljava/lang/String;

    aget-object v5, v5, v0

    sget-object v6, Lcom/capcom/billing/an;->b:Lcom/capcom/billing/an;

    invoke-direct {v4, v2, v5, v6}, Lcom/capcom/billing/am;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/an;)V

    aput-object v4, v3, v0

    iput-object v2, p0, Lcom/capcom/billing/SmurfsBilling;->r:Ljava/lang/String;

    const-string v3, "In-App Billing PURCHASE Item"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SKU="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "IAP - End of OnCreate"

    const-string v1, "register response handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    iget-object v1, p0, Lcom/capcom/billing/SmurfsBilling;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/billing/SmurfsBilling;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/capcom/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/capcom/billing/SmurfsBilling;->showDialog(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f080027

    const v1, 0x7f080028

    invoke-direct {p0, v0, v1}, Lcom/capcom/billing/SmurfsBilling;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f080025

    const v1, 0x7f080026

    invoke-direct {p0, v0, v1}, Lcom/capcom/billing/SmurfsBilling;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->l:Lcom/capcom/billing/aa;

    invoke-virtual {v0}, Lcom/capcom/billing/aa;->a()V

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->f:Lcom/capcom/billing/BillingService;

    invoke-virtual {v0}, Lcom/capcom/billing/BillingService;->b()V

    const-string v0, "SmurfsBilling onDestroy()"

    const-string v1, "BillingService Unbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->setOpenPurchaceScreenFlag(Z)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    sget-object v0, Lcom/capcom/billing/SmurfsBilling;->b:[Ljava/lang/String;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->q:Ljava/lang/String;

    sget-object v0, Lcom/capcom/billing/SmurfsBilling;->p:[Lcom/capcom/billing/am;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/capcom/billing/am;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->r:Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->i:Landroid/widget/TextView;

    const-string v1, "SmurfsBilling_LOG_TEXT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "SmurfsBilling_LOG_TEXT"

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "BillingService onStart"

    const-string v1, "SmurfsBilling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/capcom/billing/SmurfsBilling;->d:Lcom/capcom/billing/ao;

    invoke-static {v0}, Lcom/capcom/billing/ad;->b(Lcom/capcom/billing/ac;)V

    const-string v0, "SmurfsBilling OnStop"

    const-string v1, "call onDestroy()?"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    return-void
.end method
