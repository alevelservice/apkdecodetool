.class final Lcom/google/android/gms/internal/ads/eb0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sv;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/a9;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/a9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eb0;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eb0;->f:Lcom/google/android/gms/internal/ads/a9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/vs0;->b:Lcom/google/android/gms/internal/ads/ts0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/ps0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ps0;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eb0;->f:Lcom/google/android/gms/internal/ads/a9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eb0;->e:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/a9;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztp;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eb0;->f:Lcom/google/android/gms/internal/ads/a9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eb0;->e:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vs0;->b:Lcom/google/android/gms/internal/ads/ts0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/ps0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ps0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/a9;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 0

    return-void
.end method
