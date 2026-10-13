.class public final Lcom/google/android/gms/internal/ads/hn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/l4;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/google/android/gms/internal/ads/qn;

.field private final e:Lcom/google/android/gms/internal/ads/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/o0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/o0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/l4;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/kn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/kn;-><init>(Lcom/google/android/gms/internal/ads/hn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->e:Lcom/google/android/gms/internal/ads/o0;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/mn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/mn;-><init>(Lcom/google/android/gms/internal/ads/hn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->f:Lcom/google/android/gms/internal/ads/o0;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hn;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hn;->b:Lcom/google/android/gms/internal/ads/l4;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hn;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/hn;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hn;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/hn;Ljava/util/Map;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hn;->a(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/util/Map;)Z
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "hashCode"

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hn;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/hn;)Lcom/google/android/gms/internal/ads/qn;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hn;->d:Lcom/google/android/gms/internal/ads/qn;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->b:Lcom/google/android/gms/internal/ads/l4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hn;->e:Lcom/google/android/gms/internal/ads/o0;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/l4;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->b:Lcom/google/android/gms/internal/ads/l4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hn;->f:Lcom/google/android/gms/internal/ads/o0;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/l4;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->e:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->f:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->b:Lcom/google/android/gms/internal/ads/l4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hn;->e:Lcom/google/android/gms/internal/ads/o0;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/l4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->b:Lcom/google/android/gms/internal/ads/l4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hn;->f:Lcom/google/android/gms/internal/ads/o0;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/l4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hn;->d:Lcom/google/android/gms/internal/ads/qn;

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->e:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->f:Lcom/google/android/gms/internal/ads/o0;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/fi;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    return-void
.end method
