.class public Le/l/a/a;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;
.implements Lg/a/c/a/d$d;
.implements Lg/a/c/a/m$a;
.implements Lg/a/c/a/m$e;
.implements Lio/flutter/embedding/engine/g/c/a;


# static fields
.field private static v:Lcom/google/android/gms/location/LocationRequest; = null

.field private static w:J = 0x1388L

.field private static x:J

.field private static y:Ljava/lang/Integer;

.field private static z:F


# instance fields
.field private e:Lg/a/c/a/k;

.field private f:Lg/a/c/a/d;

.field private g:Lio/flutter/embedding/engine/g/c/c;

.field private h:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private i:Lcom/google/android/gms/location/j;

.field private j:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private k:Lcom/google/android/gms/location/d;

.field private l:Landroid/location/OnNmeaMessageListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation
.end field

.field private m:Ljava/lang/Double;

.field private n:Lg/a/c/a/d$b;

.field private o:Lg/a/c/a/k$d;

.field private p:I

.field private q:Landroid/app/Activity;

.field private r:Z

.field private s:Landroid/location/LocationManager;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-wide v0, Le/l/a/a;->w:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Le/l/a/a;->x:J

    const/16 v0, 0x64

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Le/l/a/a;->y:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 3
    sput v0, Le/l/a/a;->z:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/l/a/a;->r:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    .line 4
    iput-boolean v0, p0, Le/l/a/a;->u:Z

    return-void
.end method

.method static synthetic a(Le/l/a/a;Lg/a/c/a/d$b;)Lg/a/c/a/d$b;
    .locals 0

    .line 4
    iput-object p1, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    return-object p1
.end method

.method static synthetic a(Le/l/a/a;Lg/a/c/a/k$d;)Lg/a/c/a/k$d;
    .locals 0

    .line 3
    iput-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    return-object p1
.end method

.method static synthetic a(Le/l/a/a;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->m:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic a(Le/l/a/a;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 2
    iput-object p1, p0, Le/l/a/a;->m:Ljava/lang/Double;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 6
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "lyokone/location"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object p1, p0, Le/l/a/a;->e:Lg/a/c/a/k;

    .line 7
    iget-object p1, p0, Le/l/a/a;->e:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 8
    new-instance p1, Lg/a/c/a/d;

    const-string v0, "lyokone/locationstream"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/d;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object p1, p0, Le/l/a/a;->f:Lg/a/c/a/d;

    .line 9
    iget-object p1, p0, Le/l/a/a;->f:Lg/a/c/a/d;

    invoke-virtual {p1, p0}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    return-void
.end method

.method static synthetic a(Le/l/a/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Le/l/a/a;->u:Z

    return p1
.end method

.method static synthetic b()Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .line 2
    sget-object v0, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method static synthetic b(Le/l/a/a;)Lg/a/c/a/k$d;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$a;-><init>()V

    .line 3
    sget-object v1, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$a;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$a;->a()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Le/l/a/a;->j:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method static synthetic c(Le/l/a/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Le/l/a/a;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Le/l/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/l/a/a;->h()V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/l/a/a;->p:I

    .line 3
    iget v0, p0, Le/l/a/a;->p:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Le/l/a/a;)Lg/a/c/a/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 2
    new-instance v0, Le/l/a/a$a;

    invoke-direct {v0, p0}, Le/l/a/a$a;-><init>(Le/l/a/a;)V

    iput-object v0, p0, Le/l/a/a;->k:Lcom/google/android/gms/location/d;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Le/l/a/a$b;

    invoke-direct {v0, p0}, Le/l/a/a$b;-><init>(Le/l/a/a;)V

    iput-object v0, p0, Le/l/a/a;->l:Landroid/location/OnNmeaMessageListener;

    :cond_0
    return-void
.end method

.method static synthetic f(Le/l/a/a;)Lcom/google/android/gms/location/d;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->k:Lcom/google/android/gms/location/d;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->k()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    .line 3
    sget-object v0, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    sget-wide v1, Le/l/a/a;->w:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->j(J)Lcom/google/android/gms/location/LocationRequest;

    .line 4
    sget-object v0, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    sget-wide v1, Le/l/a/a;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->i(J)Lcom/google/android/gms/location/LocationRequest;

    .line 5
    sget-object v0, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    sget-object v1, Le/l/a/a;->y:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->m(I)Lcom/google/android/gms/location/LocationRequest;

    .line 6
    sget-object v0, Le/l/a/a;->v:Lcom/google/android/gms/location/LocationRequest;

    sget v1, Le/l/a/a;->z:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(F)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method static synthetic g(Le/l/a/a;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->h:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 2
    iget-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/location/f;->a(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Le/l/a/a;->h:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 3
    iget-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/location/f;->b(Landroid/app/Activity;)Lcom/google/android/gms/location/j;

    move-result-object v0

    iput-object v0, p0, Le/l/a/a;->i:Lcom/google/android/gms/location/j;

    .line 4
    iget-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Le/l/a/a;->s:Landroid/location/LocationManager;

    .line 5
    iget-object v0, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Le/l/a/a;->e()V

    .line 11
    invoke-direct {p0}, Le/l/a/a;->f()V

    .line 12
    invoke-direct {p0}, Le/l/a/a;->c()V

    return-void
.end method

.method static synthetic h(Le/l/a/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 2
    iget-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private i()Z
    .locals 2

    .line 2
    iget-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Le/l/a/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Le/l/a/a;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Le/l/a/a;)Landroid/location/OnNmeaMessageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->l:Landroid/location/OnNmeaMessageListener;

    return-object p0
.end method

.method static synthetic k(Le/l/a/a;)Landroid/location/LocationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Le/l/a/a;->s:Landroid/location/LocationManager;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 15
    iget-object v0, p0, Le/l/a/a;->i:Lcom/google/android/gms/location/j;

    iget-object v1, p0, Le/l/a/a;->j:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/j;->a(Lcom/google/android/gms/location/LocationSettingsRequest;)Le/i/b/b/d/h;

    move-result-object v0

    iget-object v1, p0, Le/l/a/a;->q:Landroid/app/Activity;

    new-instance v2, Le/l/a/a$e;

    invoke-direct {v2, p0}, Le/l/a/a$e;-><init>(Le/l/a/a;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Landroid/app/Activity;Le/i/b/b/d/e;)Le/i/b/b/d/h;

    iget-object v1, p0, Le/l/a/a;->q:Landroid/app/Activity;

    new-instance v2, Le/l/a/a$d;

    invoke-direct {v2, p0}, Le/l/a/a$d;-><init>(Le/l/a/a;)V

    .line 17
    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Landroid/app/Activity;Le/i/b/b/d/d;)Le/i/b/b/d/h;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 24
    iget-object p1, p0, Le/l/a/a;->h:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v0, p0, Le/l/a/a;->k:Lcom/google/android/gms/location/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->a(Lcom/google/android/gms/location/d;)Le/i/b/b/d/h;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    return-void
.end method

.method public a(Ljava/lang/Object;Lg/a/c/a/d$b;)V
    .locals 2

    .line 18
    iput-object p2, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    .line 19
    invoke-direct {p0}, Le/l/a/a;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 20
    invoke-direct {p0}, Le/l/a/a;->h()V

    .line 21
    iget p1, p0, Le/l/a/a;->p:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 22
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    const/4 p2, 0x0

    const-string v0, "PERMISSION_DENIED"

    const-string v1, "The user explicitly denied the use of location services for this app or location services are currently disabled in Settings."

    invoke-interface {p1, v0, v1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Le/l/a/a;->a()V

    return-void
.end method

.method public a(Lg/a/c/a/k$d;)Z
    .locals 4

    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Le/l/a/a;->s:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 11
    iget-object v2, p0, Le/l/a/a;->s:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :cond_3
    return v0

    :catch_0
    const/4 v1, 0x0

    const-string v2, "SERVICE_STATUS_ERROR"

    const-string v3, "Location service status couldn\'t be determined"

    .line 14
    invoke-interface {p1, v2, v3, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public b(Lg/a/c/a/k$d;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le/l/a/a;->a(Lg/a/c/a/k$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    .line 6
    iget-object v0, p0, Le/l/a/a;->i:Lcom/google/android/gms/location/j;

    iget-object v1, p0, Le/l/a/a;->j:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/j;->a(Lcom/google/android/gms/location/LocationSettingsRequest;)Le/i/b/b/d/h;

    move-result-object v0

    iget-object v1, p0, Le/l/a/a;->q:Landroid/app/Activity;

    new-instance v2, Le/l/a/a$c;

    invoke-direct {v2, p0, p1}, Le/l/a/a$c;-><init>(Le/l/a/a;Lg/a/c/a/k$d;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Landroid/app/Activity;Le/i/b/b/d/d;)Le/i/b/b/d/h;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v1, 0x1001

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 1
    :cond_0
    iget-boolean p1, p0, Le/l/a/a;->u:Z

    if-eqz p1, :cond_4

    if-ne p2, p3, :cond_1

    .line 2
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 4
    :goto_0
    iput-boolean v2, p0, Le/l/a/a;->u:Z

    goto :goto_1

    :cond_2
    if-ne p2, p3, :cond_3

    .line 5
    invoke-virtual {p0}, Le/l/a/a;->a()V

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    const-string p3, "PERMISSION_DENIED"

    const-string v1, "Location permission denied"

    .line 7
    invoke-interface {p1, p3, v1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    .line 2
    iput-object p1, p0, Le/l/a/a;->g:Lio/flutter/embedding/engine/g/c/c;

    .line 3
    invoke-direct {p0}, Le/l/a/a;->g()V

    .line 4
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    .line 5
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$e;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Le/l/a/a;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/l/a/a;->g:Lio/flutter/embedding/engine/g/c/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$a;)V

    .line 3
    iget-object v0, p0, Le/l/a/a;->g:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$e;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/l/a/a;->g:Lio/flutter/embedding/engine/g/c/c;

    .line 5
    iput-object v0, p0, Le/l/a/a;->q:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/l/a/a;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/l/a/a;->e:Lg/a/c/a/k;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    iput-object v0, p0, Le/l/a/a;->e:Lg/a/c/a/k;

    .line 4
    :cond_0
    iget-object p1, p0, Le/l/a/a;->f:Lg/a/c/a/d;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    .line 6
    iput-object v0, p0, Le/l/a/a;->f:Lg/a/c/a/d;

    :cond_1
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "changeSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "requestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "serviceEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "hasPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "requestService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "getLocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_8

    const/16 p1, 0x17

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Le/l/a/a;->b(Lg/a/c/a/k$d;)V

    goto/16 :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p2}, Le/l/a/a;->a(Lg/a/c/a/k$d;)Z

    goto/16 :goto_2

    .line 5
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p1, :cond_4

    .line 6
    invoke-interface {p2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_4
    iput-boolean v7, p0, Le/l/a/a;->r:Z

    .line 8
    iput-object p2, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    .line 9
    invoke-direct {p0}, Le/l/a/a;->h()V

    goto/16 :goto_2

    .line 10
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p1, :cond_6

    .line 11
    invoke-interface {p2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_6
    invoke-direct {p0}, Le/l/a/a;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    invoke-interface {p2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 14
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 15
    :cond_8
    iput-object p2, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    .line 16
    invoke-direct {p0}, Le/l/a/a;->d()Z

    move-result p1

    if-nez p1, :cond_9

    .line 17
    invoke-direct {p0}, Le/l/a/a;->h()V

    goto :goto_2

    .line 18
    :cond_9
    invoke-virtual {p0}, Le/l/a/a;->a()V

    goto :goto_2

    .line 19
    :cond_a
    :try_start_0
    iget-object v0, p0, Le/l/a/a;->t:Ljava/util/HashMap;

    const-string v1, "accuracy"

    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Le/l/a/a;->y:Ljava/lang/Integer;

    .line 20
    new-instance v0, Ljava/lang/Long;

    const-string v1, "interval"

    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Le/l/a/a;->w:J

    .line 21
    sget-wide v0, Le/l/a/a;->w:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Le/l/a/a;->x:J

    .line 22
    new-instance v0, Ljava/lang/Float;

    const-string v1, "distanceFilter"

    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sput p1, Le/l/a/a;->z:F

    .line 23
    invoke-direct {p0}, Le/l/a/a;->e()V

    .line 24
    invoke-direct {p0}, Le/l/a/a;->f()V

    .line 25
    invoke-direct {p0}, Le/l/a/a;->c()V

    .line 26
    invoke-interface {p2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An unexcepted error happened during location settings change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CHANGE_SETTINGS_ERROR"

    invoke-interface {p2, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12d622d5 -> :sswitch_5
        0x7a13d26 -> :sswitch_4
        0xa3e3c09 -> :sswitch_3
        0x268e56cc -> :sswitch_2
        0x2c7fedbe -> :sswitch_1
        0x447d83f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/l/a/a;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x22

    if-ne p1, v1, :cond_8

    .line 1
    array-length p1, p2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    aget-object p1, p2, v0

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2
    iget-boolean p1, p0, Le/l/a/a;->r:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iput-boolean v0, p0, Le/l/a/a;->r:Z

    .line 4
    aget p1, p3, v0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iput-object p2, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    .line 8
    :cond_1
    aget p1, p3, v0

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Le/l/a/a;->a()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p0}, Le/l/a/a;->a()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0}, Le/l/a/a;->i()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    const-string p3, "PERMISSION_DENIED_NEVER_ASK"

    if-eqz p1, :cond_4

    const-string v0, "Location permission denied forever- please open app settings"

    .line 15
    invoke-interface {p1, p3, v0, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    if-eqz p1, :cond_7

    const-string v0, "Location permission denied forever - please open app settings"

    .line 17
    invoke-interface {p1, p3, v0, p2}, Lg/a/c/a/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iput-object p2, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Le/l/a/a;->o:Lg/a/c/a/k$d;

    const-string p3, "Location permission denied"

    const-string v0, "PERMISSION_DENIED"

    if-eqz p1, :cond_6

    .line 20
    invoke-interface {p1, v0, p3, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object p1, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    if-eqz p1, :cond_7

    .line 22
    invoke-interface {p1, v0, p3, p2}, Lg/a/c/a/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iput-object p2, p0, Le/l/a/a;->n:Lg/a/c/a/d$b;

    :cond_7
    :goto_1
    return v1

    :cond_8
    return v0
.end method
