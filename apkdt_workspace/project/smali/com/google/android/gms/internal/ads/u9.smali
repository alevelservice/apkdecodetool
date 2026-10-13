.class final Lcom/google/android/gms/internal/ads/u9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Landroid/content/Context;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/v9;Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u9;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/u9;->f:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u9;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/l/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/l/a$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u9;->f:Lcom/google/android/gms/internal/ads/he;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u9;->f:Lcom/google/android/gms/internal/ads/he;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Throwable;)Z

    const-string v1, "Exception while getting advertising Id info"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
