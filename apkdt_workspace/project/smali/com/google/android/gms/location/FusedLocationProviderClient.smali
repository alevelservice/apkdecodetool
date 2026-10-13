.class public Lcom/google/android/gms/location/FusedLocationProviderClient;
.super Lcom/google/android/gms/common/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/FusedLocationProviderClient$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/e<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/location/f;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/location/f;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/location/FusedLocationProviderClient;Le/i/b/b/d/i;)Lcom/google/android/gms/internal/location/zzaj;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Le/i/b/b/d/i;)Lcom/google/android/gms/internal/location/zzaj;

    move-result-object p0

    return-object p0
.end method

.method private final a(Le/i/b/b/d/i;)Lcom/google/android/gms/internal/location/zzaj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/i<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/android/gms/internal/location/zzaj;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/zzp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/zzp;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Le/i/b/b/d/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/f;->d:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/api/h;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Le/i/b/b/d/h;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/f;->d:Lcom/google/android/gms/location/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/api/h;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;Landroid/os/Looper;)Le/i/b/b/d/h;
    .locals 1
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/d;",
            "Landroid/os/Looper;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzbd;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzbd;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/location/p;->a(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p3

    const-class v0, Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/common/api/internal/l;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/k;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/location/e0;

    invoke-direct {p3, p0, p2, p1, p2}, Lcom/google/android/gms/location/e0;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/k;)V

    new-instance p1, Lcom/google/android/gms/location/f0;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/k;->b()Lcom/google/android/gms/common/api/internal/k$a;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/location/f0;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/k$a;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/gms/location/d;)Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/d;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/l;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/k$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/internal/k$a;)Le/i/b/b/d/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/t;->a(Le/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public h()Le/i/b/b/d/h;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/d0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/d0;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/internal/s;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
