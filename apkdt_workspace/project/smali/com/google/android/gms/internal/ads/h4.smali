.class public final Lcom/google/android/gms/internal/ads/h4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/t3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/t3<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/v3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/v3<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/z3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z3<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/q2;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/q2;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/z3<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/v3<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h4;->c:Lcom/google/android/gms/internal/ads/q2;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h4;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h4;->b:Lcom/google/android/gms/internal/ads/z3;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/h4;->a:Lcom/google/android/gms/internal/ads/v3;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/h4;)Lcom/google/android/gms/internal/ads/v3;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h4;->a:Lcom/google/android/gms/internal/ads/v3;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/i3;Lcom/google/android/gms/internal/ads/p3;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/h4;->a(Lcom/google/android/gms/internal/ads/i3;Lcom/google/android/gms/internal/ads/p3;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/i3;Lcom/google/android/gms/internal/ads/p3;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/i3;",
            "Lcom/google/android/gms/internal/ads/p3;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/he<",
            "TO;>;)V"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-static {}, Lcom/google/android/gms/internal/ads/wa;->b()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/b0;->o:Lcom/google/android/gms/internal/ads/v0;

    new-instance v2, Lcom/google/android/gms/internal/ads/i4;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/i4;-><init>(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/i3;Lcom/google/android/gms/internal/ads/he;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/v0;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/x0;)V

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 8
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/h4;->b:Lcom/google/android/gms/internal/ads/z3;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/z3;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/h4;->d:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/r2;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 11
    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    .line 12
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->c()V

    return-void

    :catchall_0
    move-exception p2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->c()V

    throw p2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h4;->c:Lcom/google/android/gms/internal/ads/q2;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/q2;->b(Lcom/google/android/gms/internal/ads/t11;)Lcom/google/android/gms/internal/ads/i3;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/g4;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/g4;-><init>(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/i3;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/j4;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/j4;-><init>(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/he;Lcom/google/android/gms/internal/ads/i3;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/le;Lcom/google/android/gms/internal/ads/je;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/h4;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
