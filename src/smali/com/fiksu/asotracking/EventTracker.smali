.class public Lcom/fiksu/asotracking/EventTracker;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private final b:Ljava/util/HashMap;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fiksu/asotracking/EventTracker;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->b:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->b:Ljava/util/HashMap;

    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/fiksu/asotracking/EventTracker;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/fiksu/asotracking/EventTracker;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FiksuSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Ljava/util/HashMap;
    .locals 4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fiksu/asotracking/EventTracker;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected uploadEvent()V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/b;

    iget-object v2, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fiksu/asotracking/b;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected uploadEventSynchronously(J)V
    .locals 3

    new-instance v1, Lcom/fiksu/asotracking/b;

    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/fiksu/asotracking/b;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
