.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$a;
.super Lcom/google/android/gms/ads/mediation/s;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final n:Lcom/google/android/gms/ads/formats/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/s;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->n:Lcom/google/android/gms/ads/formats/d;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->a(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->g()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->g()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->a(Lcom/google/android/gms/ads/formats/a$b;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/q;->b(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/q;->a(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/d;->h()Lcom/google/android/gms/ads/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/q;->a(Lcom/google/android/gms/ads/j;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->n:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/a;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/formats/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/b;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->n:Lcom/google/android/gms/ads/formats/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/b;->a(Lcom/google/android/gms/ads/formats/a;)V

    :cond_1
    return-void
.end method
