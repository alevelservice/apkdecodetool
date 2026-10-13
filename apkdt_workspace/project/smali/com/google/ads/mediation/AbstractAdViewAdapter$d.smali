.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$d;
.super Lcom/google/android/gms/ads/mediation/x;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final s:Lcom/google/android/gms/ads/formats/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/x;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;->s:Lcom/google/android/gms/ads/formats/h;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->a(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->e()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->a(Lcom/google/android/gms/ads/formats/a$b;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->h()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->a(Ljava/lang/Double;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->f(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->e(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->b(Z)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/x;->a(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/h;->j()Lcom/google/android/gms/ads/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/x;->a(Lcom/google/android/gms/ads/j;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;->s:Lcom/google/android/gms/ads/formats/h;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/h;)V

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcom/google/android/gms/ads/formats/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/b;

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;->s:Lcom/google/android/gms/ads/formats/h;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/b;->a(Lcom/google/android/gms/ads/formats/h;)V

    :cond_1
    return-void
.end method
