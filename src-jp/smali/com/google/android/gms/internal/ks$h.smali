.class public final Lcom/google/android/gms/internal/ks$h;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/a/b/j;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/oe;

.field private static final a:Ljava/util/HashMap;


# instance fields
.field private final b:Ljava/util/Set;

.field private final c:I

.field private d:Ljava/lang/String;

.field private final e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/oe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/oe;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    new-instance v3, Lcom/google/android/gms/internal/hv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/hv;-><init>()V

    const-string v4, "home"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "work"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "blog"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "profile"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "other"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "otherProfile"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "contributor"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    const-string v4, "website"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v3

    invoke-static {v2, v9, v3, v6}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/ly;Z)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ks$h;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ks$h;->c:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ks$h;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ks$h;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ks$h;->b:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/ks$h;->c:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ks$h;->d:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ks$h;->f:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ks$h;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks$h;->k()Lcom/google/android/gms/internal/ks$h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/hy$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy$a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/ks$h;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->g:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/oe;

    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->b:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ks$h;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ks$h;

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hy$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$h;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks$h;->c:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/ks$h;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hy$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->g()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks$h;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks$h;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks$h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/google/android/gms/internal/ks$h;
    .locals 0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/oe;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/oe;->a(Lcom/google/android/gms/internal/ks$h;Landroid/os/Parcel;I)V

    return-void
.end method
