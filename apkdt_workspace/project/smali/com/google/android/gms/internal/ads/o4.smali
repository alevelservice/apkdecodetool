.class public final Lcom/google/android/gms/internal/ads/o4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qy0<",
        "TI;TO;>;"
    }
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

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/p3;",
            ">;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o4;->d:Lcom/google/android/gms/internal/ads/qz0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o4;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/o4;->b:Lcom/google/android/gms/internal/ads/z3;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/o4;->a:Lcom/google/android/gms/internal/ads/v3;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/o4;)Lcom/google/android/gms/internal/ads/v3;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o4;->a:Lcom/google/android/gms/internal/ads/v3;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/p3;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-static {}, Lcom/google/android/gms/internal/ads/wa;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/b0;->o:Lcom/google/android/gms/internal/ads/v0;

    new-instance v3, Lcom/google/android/gms/internal/ads/q4;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/q4;-><init>(Lcom/google/android/gms/internal/ads/o4;Lcom/google/android/gms/internal/ads/he;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/v0;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/x0;)V

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 5
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o4;->b:Lcom/google/android/gms/internal/ads/z3;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/z3;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "args"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/o4;->c:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/r2;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o4;->d:Lcom/google/android/gms/internal/ads/qz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/r4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/r4;-><init>(Lcom/google/android/gms/internal/ads/o4;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
