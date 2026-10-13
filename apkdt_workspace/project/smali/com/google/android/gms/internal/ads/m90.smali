.class final synthetic Lcom/google/android/gms/internal/ads/m90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e90;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m90;->e:Lcom/google/android/gms/internal/ads/he;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m90;->e:Lcom/google/android/gms/internal/ads/he;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ca;->i()Lcom/google/android/gms/internal/ads/pa;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/pa;->h()Lcom/google/android/gms/internal/ads/y9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y9;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
