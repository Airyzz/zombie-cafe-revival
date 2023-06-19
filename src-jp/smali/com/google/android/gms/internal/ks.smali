.class public final Lcom/google/android/gms/internal/ks;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/a/b/a;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nu;

.field private static final a:Ljava/util/HashMap;


# instance fields
.field private A:Z

.field private final b:Ljava/util/Set;

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/ks$a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/google/android/gms/internal/ks$b;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/google/android/gms/internal/ks$c;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/google/android/gms/internal/ks$d;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/util/List;

.field private u:Ljava/util/List;

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/internal/nu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ks;->CREATOR:Lcom/google/android/gms/internal/nu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "aboutMe"

    const-string v2, "aboutMe"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const-class v3, Lcom/google/android/gms/internal/ks$a;

    invoke-static {v2, v9, v3}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "circledByCount"

    const-string v2, "circledByCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "cover"

    const-string v2, "cover"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/internal/ks$b;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "currentLocation"

    const-string v2, "currentLocation"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    const/16 v3, 0xc

    new-instance v4, Lcom/google/android/gms/internal/hv;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hv;-><init>()V

    const-string v5, "male"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "female"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/ly;Z)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/internal/ks$c;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "isPlusUser"

    const-string v2, "isPlusUser"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/internal/ks$d;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    const/16 v3, 0x15

    new-instance v4, Lcom/google/android/gms/internal/hv;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hv;-><init>()V

    const-string v5, "person"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "page"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/ly;Z)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const/16 v3, 0x16

    const-class v4, Lcom/google/android/gms/internal/ks$f;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const/16 v3, 0x17

    const-class v4, Lcom/google/android/gms/internal/ks$g;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "plusOneCount"

    const-string v2, "plusOneCount"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "relationshipStatus"

    const-string v2, "relationshipStatus"

    const/16 v3, 0x19

    new-instance v4, Lcom/google/android/gms/internal/hv;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hv;-><init>()V

    const-string v5, "single"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "in_a_relationship"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "engaged"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "married"

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "its_complicated"

    invoke-virtual {v4, v5, v10}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "open_relationship"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "widowed"

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "in_domestic_partnership"

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    const-string v5, "in_civil_union"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/hv;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/hy$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/ly;Z)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "tagline"

    const-string v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const/16 v3, 0x1c

    const-class v4, Lcom/google/android/gms/internal/ks$h;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hy$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hy$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ks;->c:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/ks$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ks$b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ks$c;ZLjava/lang/String;Lcom/google/android/gms/internal/ks$d;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ks;->b:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/ks;->c:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ks;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ks;->e:Lcom/google/android/gms/internal/ks$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/ks;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ks;->g:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/ks;->h:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ks;->i:Lcom/google/android/gms/internal/ks$b;

    iput-object p9, p0, Lcom/google/android/gms/internal/ks;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ks;->k:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/ks;->l:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ks;->m:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/internal/ks;->n:Lcom/google/android/gms/internal/ks$c;

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ks;->o:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->p:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->q:Lcom/google/android/gms/internal/ks$d;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->r:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/internal/ks;->s:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->t:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->u:Ljava/util/List;

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/gms/internal/ks;->v:I

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/internal/ks;->w:I

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->x:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->y:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/ks;->z:Ljava/util/List;

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ks;->A:Z

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->x:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->y:Ljava/lang/String;

    return-object v0
.end method

.method C()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->z:Ljava/util/List;

    return-object v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ks;->A:Z

    return v0
.end method

.method public E()Lcom/google/android/gms/internal/ks;
    .locals 0

    return-object p0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->E()Lcom/google/android/gms/internal/ks;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->b:Ljava/util/Set;

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

    :pswitch_0
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

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->e:Lcom/google/android/gms/internal/ks$a;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ks;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->i:Lcom/google/android/gms/internal/ks$b;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/google/android/gms/internal/ks;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->n:Lcom/google/android/gms/internal/ks$c;

    goto :goto_0

    :pswitch_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ks;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->p:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->q:Lcom/google/android/gms/internal/ks$d;

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->r:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    iget v0, p0, Lcom/google/android/gms/internal/ks;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->t:Ljava/util/List;

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->u:Ljava/util/List;

    goto :goto_0

    :pswitch_13
    iget v0, p0, Lcom/google/android/gms/internal/ks;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    iget v0, p0, Lcom/google/android/gms/internal/ks;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->x:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->y:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->z:Ljava/util/List;

    goto :goto_0

    :pswitch_18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ks;->A:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ks;->CREATOR:Lcom/google/android/gms/internal/nu;

    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->b:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ks;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ks;

    sget-object v0, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/hy$a;)Z

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

    iget v0, p0, Lcom/google/android/gms/internal/ks;->c:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->d:Ljava/lang/String;

    return-object v0
.end method

.method h()Lcom/google/android/gms/internal/ks$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->e:Lcom/google/android/gms/internal/ks$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/ks;->a:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks;->a(Lcom/google/android/gms/internal/hy$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->g()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ks;->b(Lcom/google/android/gms/internal/hy$a;)Ljava/lang/Object;

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

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks;->h:I

    return v0
.end method

.method l()Lcom/google/android/gms/internal/ks$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->i:Lcom/google/android/gms/internal/ks$b;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks;->l:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->m:Ljava/lang/String;

    return-object v0
.end method

.method q()Lcom/google/android/gms/internal/ks$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->n:Lcom/google/android/gms/internal/ks$c;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ks;->o:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->p:Ljava/lang/String;

    return-object v0
.end method

.method t()Lcom/google/android/gms/internal/ks$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->q:Lcom/google/android/gms/internal/ks$d;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->r:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks;->s:I

    return v0
.end method

.method w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->t:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ks;->CREATOR:Lcom/google/android/gms/internal/nu;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/ks;Landroid/os/Parcel;I)V

    return-void
.end method

.method x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ks;->u:Ljava/util/List;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks;->v:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ks;->w:I

    return v0
.end method
