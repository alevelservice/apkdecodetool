.class public final Lcom/google/android/gms/internal/ads/qv0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qv0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qv0;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/wv0;->k()Lcom/google/android/gms/internal/ads/wv0$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qv0;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wv0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wv0$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/wv0$b;->zzgno:Lcom/google/android/gms/internal/ads/wv0$b;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wv0$a;->a(Lcom/google/android/gms/internal/ads/wv0$b;)Lcom/google/android/gms/internal/ads/wv0$a;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/sv0;->k()Lcom/google/android/gms/internal/ads/sv0$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/sv0$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sv0$b;

    sget-object p1, Lcom/google/android/gms/internal/ads/sv0$a;->zzgnh:Lcom/google/android/gms/internal/ads/sv0$a;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/sv0$b;->a(Lcom/google/android/gms/internal/ads/sv0$a;)Lcom/google/android/gms/internal/ads/sv0$b;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wv0$a;->a(Lcom/google/android/gms/internal/ads/sv0$b;)Lcom/google/android/gms/internal/ads/wv0$a;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/wv0;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qv0;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qv0;->b:Landroid/os/Looper;

    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/pv0;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/pv0;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/wv0;)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pv0;->a()V

    return-void
.end method
