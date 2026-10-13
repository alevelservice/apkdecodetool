.class Le/m/a/a/d/b;
.super Ljava/lang/Object;
.source "GoogleLocationEngineImpl.java"

# interfaces
.implements Le/m/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/a/d/b$a;,
        Le/m/a/a/d/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/a/d/e<",
        "Lcom/google/android/gms/location/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/location/f;->a(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iput-object p1, p0, Le/m/a/a/d/b;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-void
.end method

.method private static a(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x69

    return p0

    :cond_0
    const/16 p0, 0x68

    return p0

    :cond_1
    const/16 p0, 0x66

    return p0

    :cond_2
    const/16 p0, 0x64

    return p0
.end method

.method private static a(Le/m/a/a/d/h;)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .line 9
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 10
    invoke-virtual {p0}, Le/m/a/a/d/h;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->j(J)Lcom/google/android/gms/location/LocationRequest;

    .line 11
    invoke-virtual {p0}, Le/m/a/a/d/h;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->i(J)Lcom/google/android/gms/location/LocationRequest;

    .line 12
    invoke-virtual {p0}, Le/m/a/a/d/h;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(F)Lcom/google/android/gms/location/LocationRequest;

    .line 13
    invoke-virtual {p0}, Le/m/a/a/d/h;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->k(J)Lcom/google/android/gms/location/LocationRequest;

    .line 14
    invoke-virtual {p0}, Le/m/a/a/d/h;->e()I

    move-result p0

    invoke-static {p0}, Le/m/a/a/d/b;->a(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationRequest;->m(I)Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Le/m/a/a/d/b;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Landroid/app/PendingIntent;)Le/i/b/b/d/h;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/location/d;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/location/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Le/m/a/a/d/b;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/d;)Le/i/b/b/d/h;

    :cond_0
    return-void
.end method

.method public a(Le/m/a/a/d/d;)V
    .locals 1
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Le/m/a/a/d/b$a;

    invoke-direct {v0, p1}, Le/m/a/a/d/b$a;-><init>(Le/m/a/a/d/d;)V

    .line 4
    iget-object p1, p0, Le/m/a/a/d/b;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->h()Le/i/b/b/d/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/e;)Le/i/b/b/d/h;

    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/d;)Le/i/b/b/d/h;

    return-void
.end method

.method public a(Le/m/a/a/d/h;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Le/m/a/a/d/b;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {p1}, Le/m/a/a/d/b;->a(Le/m/a/a/d/h;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Le/i/b/b/d/h;

    return-void
.end method

.method public a(Le/m/a/a/d/h;Lcom/google/android/gms/location/d;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/location/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Le/m/a/a/d/b;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {p1}, Le/m/a/a/d/b;->a(Le/m/a/a/d/h;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;Landroid/os/Looper;)Le/i/b/b/d/h;

    return-void
.end method

.method public bridge synthetic a(Le/m/a/a/d/h;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/google/android/gms/location/d;

    invoke-virtual {p0, p1, p2, p3}, Le/m/a/a/d/b;->a(Le/m/a/a/d/h;Lcom/google/android/gms/location/d;Landroid/os/Looper;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/gms/location/d;

    invoke-virtual {p0, p1}, Le/m/a/a/d/b;->a(Lcom/google/android/gms/location/d;)V

    return-void
.end method

.method public b(Le/m/a/a/d/d;)Lcom/google/android/gms/location/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)",
            "Lcom/google/android/gms/location/d;"
        }
    .end annotation

    .line 2
    new-instance v0, Le/m/a/a/d/b$b;

    invoke-direct {v0, p1}, Le/m/a/a/d/b$b;-><init>(Le/m/a/a/d/d;)V

    return-object v0
.end method

.method public bridge synthetic b(Le/m/a/a/d/d;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/a/d/b;->b(Le/m/a/a/d/d;)Lcom/google/android/gms/location/d;

    move-result-object p1

    return-object p1
.end method
