.class public final Lcom/google/android/gms/internal/ads/wa0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzawv;

.field private final c:Lcom/google/android/gms/internal/ads/ws0;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ws0;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wa0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wa0;->b:Lcom/google/android/gms/internal/ads/zzawv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wa0;->c:Lcom/google/android/gms/internal/ads/ws0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wa0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/vs0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->p()Lcom/google/android/gms/internal/ads/w3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wa0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wa0;->b:Lcom/google/android/gms/internal/ads/zzawv;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/w3;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/c4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    const-string v2, "google.afma.response.normalize"

    .line 3
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wa0;->c:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zztp;->w:Lcom/google/android/gms/internal/ads/zztj;

    const-string v2, ""

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/va0;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/va0;-><init>(Lcom/google/android/gms/internal/ads/wa0;Lcom/google/android/gms/internal/ads/zztj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wa0;->d:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/ads/ya0;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/ya0;-><init>(Lcom/google/android/gms/internal/ads/t3;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa0;->d:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/xa0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/xa0;-><init>(Lcom/google/android/gms/internal/ads/wa0;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wa0;->d:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/vs0;

    new-instance v1, Lcom/google/android/gms/internal/ads/qs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wa0;->c:Lcom/google/android/gms/internal/ads/ws0;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/qs0;-><init>(Lcom/google/android/gms/internal/ads/ws0;)V

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ts0;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/ts0;

    move-result-object p1

    .line 14
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vs0;-><init>(Lcom/google/android/gms/internal/ads/qs0;Lcom/google/android/gms/internal/ads/ts0;)V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
