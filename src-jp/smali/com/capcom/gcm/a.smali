.class public Lcom/capcom/gcm/a;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field private final a:Lcom/capcom/gcm/d;


# direct methods
.method protected constructor <init>(Lcom/capcom/gcm/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/capcom/gcm/a;->a:Lcom/capcom/gcm/d;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/capcom/gcm/a;
    .locals 2

    invoke-static {p0}, Lcom/capcom/gcm/d;->a(Landroid/content/Intent;)Lcom/capcom/gcm/d;

    move-result-object v0

    new-instance v1, Lcom/capcom/gcm/a;

    invoke-direct {v1, v0}, Lcom/capcom/gcm/a;-><init>(Lcom/capcom/gcm/d;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const-string v0, "AlertDialogFragment"

    const-string v1, "AlertDialogFragment onCreateDialog 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/gcm/a;->a:Lcom/capcom/gcm/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AlertDialogFragment has no message."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "AlertDialogFragment"

    const-string v1, "AlertDialogFragment onCreateDialog 1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/gcm/a;->a:Lcom/capcom/gcm/d;

    invoke-virtual {v0}, Lcom/capcom/gcm/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/capcom/gcm/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/capcom/gcm/a;->a:Lcom/capcom/gcm/d;

    invoke-virtual {v1}, Lcom/capcom/gcm/d;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/capcom/gcm/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/capcom/gcm/a;->a:Lcom/capcom/gcm/d;

    invoke-virtual {v2}, Lcom/capcom/gcm/d;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/capcom/gcm/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget-object v3, p0, Lcom/capcom/gcm/a;->a:Lcom/capcom/gcm/d;

    invoke-virtual {v3}, Lcom/capcom/gcm/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/capcom/gcm/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f02001b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v1, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Lcom/capcom/gcm/b;

    invoke-direct {v3, p0}, Lcom/capcom/gcm/b;-><init>(Lcom/capcom/gcm/a;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    if-eqz v2, :cond_8

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/capcom/gcm/c;

    invoke-direct {v1, p0}, Lcom/capcom/gcm/c;-><init>(Lcom/capcom/gcm/a;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "AlertDialogFragment"

    const-string v2, "AlertDialogFragment onCreateDialog 2"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    const-string v0, "AlertDialogFragment"

    const-string v1, "AlertDialogFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/gcm/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
