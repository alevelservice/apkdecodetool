.class public final Lcom/google/android/gms/internal/ads/l4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/q2;

.field private b:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l4;->a:Lcom/google/android/gms/internal/ads/q2;

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l4;->a:Lcom/google/android/gms/internal/ads/q2;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/q2;->b(Lcom/google/android/gms/internal/ads/t11;)Lcom/google/android/gms/internal/ads/i3;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/k4;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/k4;-><init>(Lcom/google/android/gms/internal/ads/he;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/n4;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/n4;-><init>(Lcom/google/android/gms/internal/ads/he;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/le;Lcom/google/android/gms/internal/ads/je;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/o4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/z3<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/v3<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/o4<",
            "TI;TO;>;"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l4;->a()V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/o4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/o4;-><init>(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l4;->a()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/m4;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/m4;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/p4;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/p4;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l4;->b:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method
