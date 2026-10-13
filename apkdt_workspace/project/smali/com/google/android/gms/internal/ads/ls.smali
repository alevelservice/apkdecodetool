.class public final Lcom/google/android/gms/internal/ads/ls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sv;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/ws0;

.field private final g:Lcom/google/android/gms/internal/ads/zzawv;

.field private final h:Lcom/google/android/gms/internal/ads/pa;

.field private final i:Lcom/google/android/gms/internal/ads/e90;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pa;Lcom/google/android/gms/internal/ads/e90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ls;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ls;->f:Lcom/google/android/gms/internal/ads/ws0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ls;->g:Lcom/google/android/gms/internal/ads/zzawv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ls;->h:Lcom/google/android/gms/internal/ads/pa;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ls;->i:Lcom/google/android/gms/internal/ads/e90;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->Z1:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ls;->h:Lcom/google/android/gms/internal/ads/pa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pa;->h()Lcom/google/android/gms/internal/ads/y9;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->k()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ls;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ls;->g:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ls;->f:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/e;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/y9;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ls;->i:Lcom/google/android/gms/internal/ads/e90;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e90;->a()V

    return-void
.end method
