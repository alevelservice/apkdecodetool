.class public final Lcom/google/android/gms/internal/ads/ws$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/ws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/ads/ws0;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/us0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ws$a;)Landroid/content/Context;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ws$a;)Lcom/google/android/gms/internal/ads/ws0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws$a;->b:Lcom/google/android/gms/internal/ads/ws0;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ws$a;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws$a;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ws$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ws$a;)Lcom/google/android/gms/internal/ads/us0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ws$a;->e:Lcom/google/android/gms/internal/ads/us0;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ws$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ws$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/ws$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ws$a;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/us0;)Lcom/google/android/gms/internal/ads/ws$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ws$a;->e:Lcom/google/android/gms/internal/ads/us0;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ws$a;->b:Lcom/google/android/gms/internal/ads/ws0;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ws$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ws$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/ws;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ws;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ws;-><init>(Lcom/google/android/gms/internal/ads/ws$a;Lcom/google/android/gms/internal/ads/vs;)V

    return-object v0
.end method
