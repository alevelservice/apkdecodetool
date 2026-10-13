.class public final Lcom/google/android/gms/ads/AdRequest$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ru1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ru1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ru1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ru1;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/AdRequest$a;)Lcom/google/android/gms/internal/ads/ru1;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->a(I)V

    return-object p0
.end method

.method public final a(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/i;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$a;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ru1;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 3
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ru1;->c(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->b(Z)V

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$a;Lcom/google/android/gms/ads/q;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/AdRequest$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$a;->a:Lcom/google/android/gms/internal/ads/ru1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ru1;->a(Z)V

    return-object p0
.end method
