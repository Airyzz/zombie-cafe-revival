.class public Lcom/fiksu/asotracking/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    new-instance v0, Lcom/fiksu/asotracking/e;

    new-instance v1, Lcom/fiksu/asotracking/a;

    invoke-direct {v1, p0}, Lcom/fiksu/asotracking/a;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Lcom/fiksu/asotracking/e;-><init>(Landroid/app/Application;Lcom/fiksu/asotracking/a;)V

    invoke-static {p0}, Lcom/fiksu/asotracking/InstallTracking;->a(Landroid/content/Context;)V

    return-void
.end method
