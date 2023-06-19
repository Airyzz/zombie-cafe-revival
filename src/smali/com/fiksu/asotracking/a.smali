.class Lcom/fiksu/asotracking/a;
.super Lcom/fiksu/asotracking/EventTracker;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/a;-><init>(Landroid/app/Application;Z)V

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Z)V
    .locals 1

    const-string v0, "Launch"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/a;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Conversion"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "tvalue"

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/a;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "Resume"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
