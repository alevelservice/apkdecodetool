.class final Le/m/b/r;
.super Ljava/lang/Object;
.source "MapboxMapController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/mapbox/mapboxsdk/maps/n$c;
.implements Lcom/mapbox/mapboxsdk/maps/n$e;
.implements Lcom/mapbox/mapboxsdk/maps/n$f;
.implements Lcom/mapbox/mapboxsdk/t/a/r;
.implements Lcom/mapbox/mapboxsdk/maps/n$o;
.implements Lcom/mapbox/mapboxsdk/maps/n$p;
.implements Le/m/b/t;
.implements Lg/a/c/a/k$c;
.implements Lcom/mapbox/mapboxsdk/maps/r;
.implements Lcom/mapbox/mapboxsdk/location/x;
.implements Le/m/b/y;
.implements Le/m/b/x;
.implements Le/m/b/v;
.implements Le/m/b/w;
.implements Lio/flutter/plugin/platform/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/r$g;
    }
.end annotation


# instance fields
.field private final A:Landroid/content/Context;

.field private final B:Ljava/lang/String;

.field private C:Lcom/mapbox/mapboxsdk/location/k;

.field private D:Le/m/a/a/d/c;

.field private E:Le/m/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/mapbox/mapboxsdk/plugins/localization/a;

.field private G:Lcom/mapbox/mapboxsdk/maps/Style;

.field H:Lcom/mapbox/mapboxsdk/maps/Style$c;

.field private final e:I

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Lg/a/c/a/k;

.field private final h:Lg/a/c/a/m$d;

.field private final i:Lcom/mapbox/mapboxsdk/maps/MapView;

.field private j:Lcom/mapbox/mapboxsdk/maps/n;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/b/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/mapbox/mapboxsdk/t/a/b0;

.field private p:Lcom/mapbox/mapboxsdk/t/a/p;

.field private q:Lcom/mapbox/mapboxsdk/t/a/e;

.field private r:Lcom/mapbox/mapboxsdk/t/a/l;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private final x:F

.field private y:Lg/a/c/a/k$d;

.field private final z:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Lg/a/c/a/m$d;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/m/b/r;->s:Z

    .line 3
    iput-boolean v0, p0, Le/m/b/r;->t:Z

    .line 4
    iput v0, p0, Le/m/b/r;->u:I

    .line 5
    iput v0, p0, Le/m/b/r;->v:I

    .line 6
    iput-boolean v0, p0, Le/m/b/r;->w:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    .line 8
    iput-object v0, p0, Le/m/b/r;->D:Le/m/a/a/d/c;

    .line 9
    iput-object v0, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    .line 10
    new-instance v0, Le/m/b/r$a;

    invoke-direct {v0, p0}, Le/m/b/r$a;-><init>(Le/m/b/r;)V

    iput-object v0, p0, Le/m/b/r;->H:Lcom/mapbox/mapboxsdk/maps/Style$c;

    if-eqz p6, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Le/m/b/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    :goto_0
    invoke-static {p2, p6}, Lcom/mapbox/mapboxsdk/Mapbox;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mapbox/mapboxsdk/Mapbox;

    .line 12
    iput p1, p0, Le/m/b/r;->e:I

    .line 13
    iput-object p2, p0, Le/m/b/r;->A:Landroid/content/Context;

    .line 14
    iput-object p3, p0, Le/m/b/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    iput-object p4, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    .line 16
    iput-object p7, p0, Le/m/b/r;->B:Ljava/lang/String;

    .line 17
    new-instance p3, Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-direct {p3, p2, p5}, Lcom/mapbox/mapboxsdk/maps/MapView;-><init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;)V

    iput-object p3, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 18
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Le/m/b/r;->k:Ljava/util/Map;

    .line 19
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Le/m/b/r;->l:Ljava/util/Map;

    .line 20
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Le/m/b/r;->m:Ljava/util/Map;

    .line 21
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Le/m/b/r;->n:Ljava/util/Map;

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Le/m/b/r;->x:F

    .line 23
    new-instance p2, Lg/a/c/a/k;

    .line 24
    invoke-interface {p4}, Lg/a/c/a/m$d;->d()Lg/a/c/a/c;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "plugins.flutter.io/mapbox_maps_"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object p2, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    .line 25
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 26
    invoke-interface {p4}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Le/m/b/r;->z:I

    return-void
.end method

.method private a(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 8

    .line 90
    iget-object v0, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "/"

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    float-to-double v4, p2

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p2, v4

    :goto_0
    if-lez p2, :cond_2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 94
    iget-object v4, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v4, p1}, Lg/a/c/a/m$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 95
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    .line 96
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ge v6, v7, :cond_1

    .line 97
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 99
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v4, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lg/a/c/a/m$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 108
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_3

    :cond_3
    :goto_4
    return-object p1
.end method

.method static synthetic a(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object p1
.end method

.method static synthetic a(Le/m/b/r;Lcom/mapbox/mapboxsdk/plugins/localization/a;)Lcom/mapbox/mapboxsdk/plugins/localization/a;
    .locals 0

    .line 4
    iput-object p1, p0, Le/m/b/r;->F:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    return-object p1
.end method

.method static synthetic a(Le/m/b/r;)Lg/a/c/a/k;
    .locals 0

    .line 2
    iget-object p0, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 6
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.mapbox.token"

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find an Access Token in the Application meta-data. Maps may not load correctly. Please refer to the installation guide at https://github.com/tobrun/flutter-mapbox-gl#mapbox-access-token for troubleshooting advice."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "altitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "horizontalAccuracy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "verticalAccuracy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "userLocation"

    .line 42
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "map#onUserLocationUpdated"

    invoke-virtual {v0, v1, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-object v0, p0, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/e;

    iget-object v1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v2, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-direct {v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/t/a/e;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V

    iput-object v0, p0, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    .line 46
    iget-object p1, p0, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    new-instance v0, Le/m/b/a;

    invoke-direct {v0, p0}, Le/m/b/a;-><init>(Le/m/b/r;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/r;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Le/m/b/r;Landroid/location/Location;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Le/m/b/r;->a(Landroid/location/Location;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Le/m/b/r;->A:Landroid/content/Context;

    .line 24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/l;

    iget-object v1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v2, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-direct {v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/t/a/l;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V

    iput-object v0, p0, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    .line 5
    iget-object p1, p0, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    new-instance v0, Le/m/b/e;

    invoke-direct {v0, p0}, Le/m/b/e;-><init>(Le/m/b/r;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/r;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/r;->c(Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-void
.end method

.method static synthetic b(Le/m/b/r;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Le/m/b/r;->t:Z

    return p0
.end method

.method static synthetic c(Le/m/b/r;)Lcom/mapbox/mapboxsdk/maps/n;
    .locals 0

    .line 2
    iget-object p0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Le/m/b/g;
    .locals 3

    .line 3
    iget-object v0, p0, Le/m/b/r;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/g;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown circle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/p;

    iget-object v1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v2, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-direct {v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/t/a/p;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V

    iput-object v0, p0, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    .line 7
    iget-object p1, p0, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    new-instance v0, Le/m/b/c;

    invoke-direct {v0, p0}, Le/m/b/c;-><init>(Le/m/b/r;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/r;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/r;->e(Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-void
.end method

.method static synthetic d(Le/m/b/r;)Lcom/mapbox/mapboxsdk/maps/MapView;
    .locals 0

    .line 2
    iget-object p0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Le/m/b/k;
    .locals 3

    .line 3
    iget-object v0, p0, Le/m/b/r;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/k;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fill: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Le/m/b/r;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/m/b/r;->A:Landroid/content/Context;

    invoke-static {v0}, Le/m/a/a/d/f;->a(Landroid/content/Context;)Le/m/a/a/d/c;

    move-result-object v0

    iput-object v0, p0, Le/m/b/r;->D:Le/m/a/a/d/c;

    .line 7
    iget-object v0, p0, Le/m/b/r;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->a(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;

    .line 9
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$b;->b()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    .line 10
    iget-object v2, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/n;->f()Lcom/mapbox/mapboxsdk/location/k;

    move-result-object v2

    iput-object v2, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    .line 11
    iget-object v2, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    iget-object v3, p0, Le/m/b/r;->A:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V

    .line 12
    iget-object p1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/location/k;->a(Z)V

    .line 13
    iget-object p1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    iget-object v0, p0, Le/m/b/r;->D:Le/m/a/a/d/c;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(Le/m/a/a/d/c;)V

    .line 14
    iget-object p1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/k;->b(I)V

    .line 15
    invoke-direct {p0}, Le/m/b/r;->q()V

    .line 16
    iget p1, p0, Le/m/b/r;->u:I

    invoke-virtual {p0, p1}, Le/m/b/r;->e(I)V

    .line 17
    invoke-direct {p0}, Le/m/b/r;->p()V

    .line 18
    iget p1, p0, Le/m/b/r;->v:I

    invoke-virtual {p0, p1}, Le/m/b/r;->b(I)V

    .line 19
    iget-object p1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/location/k;->a(Lcom/mapbox/mapboxsdk/location/x;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/r;->a(Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Le/m/b/o;
    .locals 3

    .line 2
    iget-object v0, p0, Le/m/b/r;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/o;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/b0;

    iget-object v1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    iget-object v2, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-direct {v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/t/a/b0;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V

    iput-object v0, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    .line 6
    iget-object p1, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/t/a/b0;->a(Ljava/lang/Boolean;)V

    .line 7
    iget-object p1, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/t/a/b0;->b(Ljava/lang/Boolean;)V

    .line 8
    iget-object p1, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mapbox/mapboxsdk/t/a/b0;->c(Ljava/lang/Boolean;)V

    .line 9
    iget-object p1, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b0;->d(Ljava/lang/Boolean;)V

    .line 10
    iget-object p1, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    new-instance v0, Le/m/b/b;

    invoke-direct {v0, p0}, Le/m/b/b;-><init>(Le/m/b/r;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/r;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/r;->b(Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-void
.end method

.method static synthetic f(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/r;->d(Lcom/mapbox/mapboxsdk/maps/Style;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/r;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/b/g;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    invoke-virtual {p1, v0}, Le/m/b/g;->a(Lcom/mapbox/mapboxsdk/t/a/e;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Le/m/b/r;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/b/k;

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    invoke-virtual {p1, v0}, Le/m/b/k;->a(Lcom/mapbox/mapboxsdk/t/a/l;)V

    :cond_0
    return-void
.end method

.method private h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/r;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/b/o;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    invoke-virtual {p1, v0}, Le/m/b/o;->a(Lcom/mapbox/mapboxsdk/t/a/p;)V

    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;)Le/m/b/a0;
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/b/r;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/a0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-direct {p0, v0}, Le/m/b/r;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    invoke-direct {p0, v0}, Le/m/b/r;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private j()Le/m/b/f;
    .locals 2

    .line 1
    new-instance v0, Le/m/b/f;

    iget-object v1, p0, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    invoke-direct {v0, v1}, Le/m/b/f;-><init>(Lcom/mapbox/mapboxsdk/t/a/e;)V

    return-object v0
.end method

.method private k()Le/m/b/j;
    .locals 2

    .line 1
    new-instance v0, Le/m/b/j;

    iget-object v1, p0, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    invoke-direct {v0, v1}, Le/m/b/j;-><init>(Lcom/mapbox/mapboxsdk/t/a/l;)V

    return-object v0
.end method

.method private l()Le/m/b/n;
    .locals 2

    .line 1
    new-instance v0, Le/m/b/n;

    iget-object v1, p0, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    invoke-direct {v0, v1}, Le/m/b/n;-><init>(Lcom/mapbox/mapboxsdk/t/a/p;)V

    return-object v0
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->c()Le/m/a/a/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/m/b/r$f;

    invoke-direct {v0, p0}, Le/m/b/r$f;-><init>(Le/m/b/r;)V

    iput-object v0, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    .line 3
    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->c()Le/m/a/a/d/c;

    move-result-object v0

    iget-object v1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/k;->d()Le/m/a/a/d/h;

    move-result-object v1

    iget-object v2, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/m/a/a/d/c;->a(Le/m/a/a/d/h;Le/m/a/a/d/d;Landroid/os/Looper;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->c()Le/m/a/a/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/k;->c()Le/m/a/a/d/c;

    move-result-object v0

    iget-object v1, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    invoke-interface {v0, v1}, Le/m/a/a/d/c;->b(Le/m/a/a/d/d;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/b/r;->E:Le/m/a/a/d/d;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/m/b/r;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v0

    invoke-direct {p0, v0}, Le/m/b/r;->d(Lcom/mapbox/mapboxsdk/maps/Style;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/b/r;->t:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Le/m/b/r;->m()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Le/m/b/r;->n()V

    .line 6
    :goto_0
    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    iget-boolean v1, p0, Le/m/b/r;->t:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/k;->a(Z)V

    return-void
.end method

.method private p()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    iget v2, p0, Le/m/b/r;->v:I

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/location/k;->c(I)V

    return-void

    :array_0
    .array-data 4
        0x12
        0x4
        0x8
    .end array-data
.end method

.method private q()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    iget v2, p0, Le/m/b/r;->u:I

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/location/k;->a(I)V

    return-void

    :array_0
    .array-data 4
        0x8
        0x18
        0x20
        0x22
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 47
    iget-boolean v0, p0, Le/m/b/r;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    iget-object v1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Le/m/b/i;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v2, "camera#onMove"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "map#onCameraTrackingChanged"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 89
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->a(IIII)V

    return-void
.end method

.method public synthetic a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/plugin/platform/f;Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 1

    .line 85
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 2

    .line 12
    iput-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    .line 13
    iget-object v0, p0, Le/m/b/r;->y:Lg/a/c/a/k$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 15
    iput-object v1, p0, Le/m/b/r;->y:Lg/a/c/a/k$d;

    .line 16
    :cond_0
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$f;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$e;)V

    .line 18
    invoke-virtual {p1, p0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$c;)V

    .line 19
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    new-instance v1, Le/m/b/d;

    invoke-direct {v1, p0, p1}, Le/m/b/d;-><init>(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/n;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnStyleImageMissingListener(Lcom/mapbox/mapboxsdk/maps/MapView$w;)V

    .line 20
    iget-object p1, p0, Le/m/b/r;->B:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/m/b/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic a(Lcom/mapbox/mapboxsdk/maps/n;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Le/m/b/r;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p2, v0}, Le/m/b/r;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/c;)V
    .locals 3

    .line 72
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 73
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "circle"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "circle#onTap"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/j;)V
    .locals 3

    .line 75
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fill"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "fill#onTap"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/n;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 70
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "line"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "line#onTap"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/z;)V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "symbol"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "symbol#onTap"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/maps/n;->b(D)V

    :cond_0
    if-eqz p2, :cond_1

    .line 88
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(D)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "{"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "http://"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mapbox://"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 30
    iget-object v0, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v0, p1}, Lg/a/c/a/m$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-direct {v1}, Lcom/mapbox/mapboxsdk/maps/Style$b;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asset://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$b;

    iget-object p1, p0, Le/m/b/r;->H:Lcom/mapbox/mapboxsdk/maps/Style$c;

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/Style$c;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-direct {v1}, Lcom/mapbox/mapboxsdk/maps/Style$b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$b;

    iget-object p1, p0, Le/m/b/r;->H:Lcom/mapbox/mapboxsdk/maps/Style$c;

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/Style$c;)V

    goto :goto_1

    .line 33
    :cond_3
    :goto_0
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v1, Lcom/mapbox/mapboxsdk/maps/Style$b;

    invoke-direct {v1}, Lcom/mapbox/mapboxsdk/maps/Style$b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style$b;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/Style$b;

    iget-object p1, p0, Le/m/b/r;->H:Lcom/mapbox/mapboxsdk/maps/Style$c;

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/Style$b;Lcom/mapbox/mapboxsdk/maps/Style$c;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->b(Z)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "x"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "y"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "lng"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "lat"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v0, "map#onMapClick"

    invoke-virtual {p1, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/a;)Z
    .locals 4

    .line 54
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/t/a/z;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Le/m/b/r;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/a0;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Le/m/b/a0;->c()Z

    return v1

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/t/a/n;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Le/m/b/r;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/o;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Le/m/b/o;->b()Z

    return v1

    .line 60
    :cond_1
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/t/a/c;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Le/m/b/r;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/b/g;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Le/m/b/g;->b()Z

    return v1

    .line 63
    :cond_2
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/t/a/j;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Le/m/b/r;->n:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/b/k;

    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Le/m/b/k;->a()Z

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic b()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0}, Lio/flutter/plugin/platform/e;->b(Lio/flutter/plugin/platform/f;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 14
    iget v0, p0, Le/m/b/r;->v:I

    if-ne v0, p1, :cond_0

    return-void

    .line 15
    :cond_0
    iput p1, p0, Le/m/b/r;->v:I

    .line 16
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-eqz p1, :cond_1

    .line 17
    invoke-direct {p0}, Le/m/b/r;->p()V

    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 18
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->g()I

    move-result v0

    const v1, 0x800033

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x800053

    if-eq v0, v1, :cond_1

    const v1, 0x800055

    if-eq v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p1, v2}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, v2, v2, p1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v2, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/mapbox/mapboxsdk/maps/b0;->b(IIII)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Le/m/b/r;->s:Z

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "x"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "y"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "lng"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "lat"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v0, "map#onMapLongClick"

    invoke-virtual {p1, v0, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic c()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0}, Lio/flutter/plugin/platform/e;->c(Lio/flutter/plugin/platform/f;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 8
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isGesture"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    const-string v1, "camera#onMoveStarted"

    invoke-virtual {p1, v1, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 12
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/mapbox/mapboxsdk/maps/b0;->c(IIII)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->q(Z)V

    return-void
.end method

.method public synthetic d()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0}, Lio/flutter/plugin/platform/e;->a(Lio/flutter/plugin/platform/f;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 21
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    const v0, 0x800035

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(I)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    const v0, 0x800055

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(I)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    const v0, 0x800053

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(I)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    const v0, 0x800033

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/b0;->c(I)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 20
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->r(Z)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/b/r;->w:Z

    .line 3
    iget-object v0, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/k;->a(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->e()V

    .line 7
    :cond_2
    iget-object v0, p0, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->e()V

    .line 9
    :cond_3
    iget-object v0, p0, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->e()V

    .line 11
    :cond_4
    iget-object v0, p0, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->e()V

    .line 13
    :cond_5
    invoke-direct {p0}, Le/m/b/r;->n()V

    .line 14
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onDestroy()V

    .line 15
    iget-object v0, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 11
    iget-object v0, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    iget v1, p0, Le/m/b/r;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "map"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "camera#onIdle"

    invoke-virtual {v0, v2, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 13
    iget v0, p0, Le/m/b/r;->u:I

    if-ne v0, p1, :cond_0

    return-void

    .line 14
    :cond_0
    iput p1, p0, Le/m/b/r;->u:I

    .line 15
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-eqz p1, :cond_1

    .line 16
    invoke-direct {p0}, Le/m/b/r;->q()V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->m(Z)V

    return-void
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/m/b/r;->u:I

    .line 5
    iget-object v0, p0, Le/m/b/r;->g:Lg/a/c/a/k;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "map#onCameraTrackingDismissed"

    invoke-virtual {v0, v2, v1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->n()Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/b0;->p(Z)V

    return-void
.end method

.method g()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/b/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/m/b/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an activity state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$c;)V

    .line 5
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$f;)V

    .line 6
    iget-object v0, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$e;)V

    .line 7
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onDestroy()V

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    .line 10
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onResume()V

    .line 11
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onPause()V

    .line 12
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStop()V

    goto :goto_0

    .line 13
    :pswitch_2
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 14
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    .line 15
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onResume()V

    .line 16
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onPause()V

    goto :goto_0

    .line 17
    :pswitch_3
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    .line 19
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onResume()V

    goto :goto_0

    .line 20
    :pswitch_4
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    goto :goto_0

    .line 22
    :pswitch_5
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 23
    :goto_0
    iget-object v0, p0, Le/m/b/r;->h:Lg/a/c/a/m$d;

    invoke-interface {v0}, Lg/a/c/a/m$d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 24
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/MapView;->getMapAsync(Lcom/mapbox/mapboxsdk/maps/r;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Z)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Le/m/b/r;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 28
    :cond_0
    iput-boolean p1, p0, Le/m/b/r;->t:Z

    .line 29
    iget-object p1, p0, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz p1, :cond_1

    .line 30
    invoke-direct {p0}, Le/m/b/r;->o()V

    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onDestroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onPause()V

    .line 3
    invoke-direct {p0}, Le/m/b/r;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onResume()V

    .line 3
    iget-boolean p1, p0, Le/m/b/r;->t:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Le/m/b/r;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStart()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/b/r;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Le/m/b/r;->z:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/b/r;->i:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/MapView;->onStop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "symbolManager#iconAllowOverlap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "camera#move"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "symbolManager#textAllowOverlap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "symbol#getGeometry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "map#toLatLng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "map#queryRenderedFeatures"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "map#invalidateAmbientCache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "style#addLayer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "style#addImage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "map#getMetersPerPixelAtLatitude"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "locationComponent#getLastLocation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "map#getTelemetryEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "style#removeLayer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "map#updateMyLocationTrackingMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "line#add"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "symbolManager#iconIgnorePlacement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "line#getGeometry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "map#setMapLanguage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "style#addImageSource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "map#waitForMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "style#removeImageSource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "map#setTelemetryEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_16
    const-string v4, "map#toScreenLocation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_17
    const-string v4, "fill#update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_18
    const-string v4, "fill#remove"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_19
    const-string v4, "symbol#update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_1a
    const-string v4, "fill#add"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_1b
    const-string v4, "symbols#removeAll"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_1c
    const-string v4, "circle#add"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_1d
    const-string v4, "line#update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_1e
    const-string v4, "circle#update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto :goto_1

    :sswitch_1f
    const-string v4, "line#remove"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto :goto_1

    :sswitch_20
    const-string v4, "circle#remove"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto :goto_1

    :sswitch_21
    const-string v4, "camera#animate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_22
    const-string v4, "map#matchMapLanguageWithDeviceDefault"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_23
    const-string v4, "map#update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_24
    const-string v4, "symbolManager#textIgnorePlacement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto :goto_1

    :sswitch_25
    const-string v4, "circle#getGeometry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto :goto_1

    :sswitch_26
    const-string v4, "map#getVisibleRegion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_27
    const-string v4, "symbols#addAll"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v4, "cameraUpdate"

    const-string v9, "circle"

    const-string v10, "line"

    const-string v11, "y"

    const-string v12, "x"

    const-string v13, "The style is null. Has onStyleLoaded() already been invoked?"

    const-string v14, "STYLE IS NULL"

    const-string v15, "name"

    const-string v5, "longitude"

    const-string v6, "latitude"

    const-string v7, "options"

    move-object/from16 v17, v8

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    invoke-interface/range {p2 .. p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_c

    .line 3
    :pswitch_0
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v2, v14, v13, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->d(Ljava/lang/String;)Z

    .line 6
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 7
    :pswitch_1
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    if-nez v3, :cond_2

    .line 8
    invoke-interface {v2, v14, v13, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    new-instance v4, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;

    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "sourceId"

    invoke-virtual {v0, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/mapbox/mapboxsdk/style/layers/RasterLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    .line 10
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 11
    :pswitch_2
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    if-nez v3, :cond_3

    .line 12
    invoke-interface {v2, v14, v13, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_3
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->e(Ljava/lang/String;)Z

    .line 14
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 15
    :pswitch_3
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    if-nez v3, :cond_4

    .line 16
    invoke-interface {v2, v14, v13, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string v3, "coordinates"

    .line 17
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Le/m/b/i;->i(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 18
    iget-object v4, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    new-instance v5, Lcom/mapbox/mapboxsdk/style/sources/ImageSource;

    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v12, 0x3

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v7, v10, v9, v11, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    const-string v3, "bytes"

    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v9, "length"

    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v9, 0x0

    invoke-static {v3, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v5, v6, v7, v0}, Lcom/mapbox/mapboxsdk/style/sources/ImageSource;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngQuad;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 19
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 20
    :pswitch_4
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    if-nez v3, :cond_5

    .line 21
    invoke-interface {v2, v14, v13, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :cond_5
    iget-object v3, v1, Le/m/b/r;->G:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "bytes"

    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const-string v6, "length"

    invoke-virtual {v0, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "sdf"

    invoke-virtual {v0, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 23
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 24
    :pswitch_5
    iget-boolean v0, v1, Le/m/b/r;->t:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Le/m/b/r;->C:Lcom/mapbox/mapboxsdk/location/k;

    if-eqz v0, :cond_16

    iget-object v0, v1, Le/m/b/r;->D:Le/m/a/a/d/c;

    if-eqz v0, :cond_16

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    iget-object v3, v1, Le/m/b/r;->D:Le/m/a/a/d/c;

    new-instance v4, Le/m/b/r$e;

    invoke-direct {v4, v1, v0, v2}, Le/m/b/r$e;-><init>(Le/m/b/r;Ljava/util/Map;Lg/a/c/a/k$d;)V

    invoke-interface {v3, v4}, Le/m/a/a/d/c;->a(Le/m/a/a/d/d;)V

    goto/16 :goto_c

    :pswitch_6
    const-string v3, "fill"

    .line 27
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-direct {v1, v3}, Le/m/b/r;->d(Ljava/lang/String;)Le/m/b/k;

    move-result-object v3

    .line 29
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/l;)V

    .line 30
    iget-object v0, v1, Le/m/b/r;->r:Lcom/mapbox/mapboxsdk/t/a/l;

    invoke-virtual {v3, v0}, Le/m/b/k;->b(Lcom/mapbox/mapboxsdk/t/a/l;)V

    .line 31
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_7
    const-string v3, "fill"

    .line 32
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-direct {v1, v0}, Le/m/b/r;->g(Ljava/lang/String;)V

    .line 34
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 35
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Le/m/b/r;->k()Le/m/b/j;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/l;)V

    .line 37
    invoke-virtual {v3}, Le/m/b/j;->a()Lcom/mapbox/mapboxsdk/t/a/j;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v4, v1, Le/m/b/r;->n:Ljava/util/Map;

    new-instance v5, Le/m/b/k;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6, v1}, Le/m/b/k;-><init>(Lcom/mapbox/mapboxsdk/t/a/j;ZLe/m/b/w;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 41
    :pswitch_9
    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-direct {v1, v0}, Le/m/b/r;->c(Ljava/lang/String;)Le/m/b/g;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Le/m/b/g;->a()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    .line 44
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 48
    :pswitch_a
    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    invoke-direct {v1, v3}, Le/m/b/r;->c(Ljava/lang/String;)Le/m/b/g;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/h;)V

    .line 51
    iget-object v0, v1, Le/m/b/r;->q:Lcom/mapbox/mapboxsdk/t/a/e;

    invoke-virtual {v3, v0}, Le/m/b/g;->b(Lcom/mapbox/mapboxsdk/t/a/e;)V

    .line 52
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 53
    :pswitch_b
    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-direct {v1, v0}, Le/m/b/r;->f(Ljava/lang/String;)V

    .line 55
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 56
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Le/m/b/r;->j()Le/m/b/f;

    move-result-object v3

    .line 57
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/h;)V

    .line 58
    invoke-virtual {v3}, Le/m/b/f;->a()Lcom/mapbox/mapboxsdk/t/a/c;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 60
    iget-object v4, v1, Le/m/b/r;->m:Ljava/util/Map;

    new-instance v5, Le/m/b/g;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6, v1}, Le/m/b/g;-><init>(Lcom/mapbox/mapboxsdk/t/a/c;ZLe/m/b/v;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 62
    :pswitch_d
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-direct {v1, v0}, Le/m/b/r;->e(Ljava/lang/String;)Le/m/b/o;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Le/m/b/o;->a()Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 67
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 71
    :cond_6
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 72
    :pswitch_e
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    invoke-direct {v1, v3}, Le/m/b/r;->e(Ljava/lang/String;)Le/m/b/o;

    move-result-object v3

    .line 74
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/p;)V

    .line 75
    iget-object v0, v1, Le/m/b/r;->p:Lcom/mapbox/mapboxsdk/t/a/p;

    invoke-virtual {v3, v0}, Le/m/b/o;->b(Lcom/mapbox/mapboxsdk/t/a/p;)V

    .line 76
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 77
    :pswitch_f
    invoke-virtual {v0, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-direct {v1, v0}, Le/m/b/r;->h(Ljava/lang/String;)V

    .line 79
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 80
    :pswitch_10
    invoke-direct/range {p0 .. p0}, Le/m/b/r;->l()Le/m/b/n;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/p;)V

    .line 82
    invoke-virtual {v3}, Le/m/b/n;->a()Lcom/mapbox/mapboxsdk/t/a/n;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, v1, Le/m/b/r;->l:Ljava/util/Map;

    new-instance v5, Le/m/b/o;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6, v1}, Le/m/b/o;-><init>(Lcom/mapbox/mapboxsdk/t/a/n;ZLe/m/b/x;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_11
    const-string v3, "textIgnorePlacement"

    .line 86
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 87
    iget-object v3, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/t/a/b0;->d(Ljava/lang/Boolean;)V

    .line 88
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_12
    const-string v3, "textAllowOverlap"

    .line 89
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 90
    iget-object v3, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/t/a/b0;->c(Ljava/lang/Boolean;)V

    .line 91
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_13
    const-string v3, "iconIgnorePlacement"

    .line 92
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 93
    iget-object v3, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/t/a/b0;->b(Ljava/lang/Boolean;)V

    .line 94
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_14
    const-string v3, "symbol"

    .line 95
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    invoke-direct {v1, v3}, Le/m/b/r;->i(Ljava/lang/String;)Le/m/b/a0;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Le/m/b/a0;->a()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v3

    .line 98
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {v2, v4}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :pswitch_15
    const-string v3, "iconAllowOverlap"

    .line 102
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 103
    iget-object v3, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/t/a/b0;->a(Ljava/lang/Boolean;)V

    .line 104
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_16
    const-string v3, "symbol"

    .line 105
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-direct {v1, v3}, Le/m/b/r;->i(Ljava/lang/String;)Le/m/b/a0;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/b0;)V

    .line 108
    iget-object v0, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v3, v0}, Le/m/b/a0;->a(Lcom/mapbox/mapboxsdk/t/a/b0;)V

    .line 109
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_17
    const-string v3, "symbols"

    .line 110
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    iget-object v5, v1, Le/m/b/r;->k:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/b/a0;

    if-eqz v4, :cond_7

    .line 114
    invoke-virtual {v4}, Le/m/b/a0;->b()Lcom/mapbox/mapboxsdk/t/a/z;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 116
    iget-object v0, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Ljava/util/List;)V

    .line 117
    :cond_9
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 118
    :pswitch_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 122
    new-instance v6, Le/m/b/z;

    invoke-direct {v6}, Le/m/b/z;-><init>()V

    .line 123
    invoke-static {v5, v6}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/b0;)V

    .line 124
    invoke-virtual {v6}, Le/m/b/z;->a()Lcom/mapbox/mapboxsdk/t/a/c0;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 126
    iget-object v0, v1, Le/m/b/r;->o:Lcom/mapbox/mapboxsdk/t/a/b0;

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/t/a/z;

    .line 128
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v6, v1, Le/m/b/r;->k:Ljava/util/Map;

    new-instance v7, Le/m/b/a0;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8, v1}, Le/m/b/a0;-><init>(Lcom/mapbox/mapboxsdk/t/a/z;ZLe/m/b/y;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 131
    :cond_b
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 132
    :pswitch_19
    iget-object v0, v1, Le/m/b/r;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->b(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    move-result-object v0

    .line 133
    new-instance v3, Le/m/b/r$d;

    invoke-direct {v3, v1, v2}, Le/m/b/r$d;-><init>(Le/m/b/r;Lg/a/c/a/k$d;)V

    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V

    goto/16 :goto_c

    .line 134
    :pswitch_1a
    invoke-static {}, Lcom/mapbox/android/telemetry/j0;->b()Lcom/mapbox/android/telemetry/j0$c;

    move-result-object v0

    .line 135
    sget-object v3, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    if-ne v0, v3, :cond_c

    const/16 v16, 0x1

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    :goto_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1b
    const-string v3, "enabled"

    .line 136
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getTelemetry()Lcom/mapbox/mapboxsdk/maps/z;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mapbox/mapboxsdk/maps/z;->setUserTelemetryRequestState(Z)V

    .line 138
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 139
    :pswitch_1c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "layerIds"

    .line 140
    invoke-virtual {v0, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "filter"

    .line 141
    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_d

    move-object v5, v8

    goto :goto_7

    .line 142
    :cond_d
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v5

    :goto_7
    if-eqz v5, :cond_e

    .line 143
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 144
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    goto :goto_8

    :cond_e
    move-object v5, v8

    :goto_8
    if-nez v5, :cond_f

    goto :goto_9

    .line 145
    :cond_f
    invoke-static {v5}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v8

    .line 146
    :goto_9
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 147
    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 148
    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 149
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-direct {v6, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 150
    iget-object v0, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, v6, v8, v4}, Lcom/mapbox/mapboxsdk/maps/n;->a(Landroid/graphics/PointF;Lcom/mapbox/mapboxsdk/u/a/a;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_10
    const-string v5, "left"

    .line 151
    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    const-string v6, "top"

    .line 152
    invoke-virtual {v0, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    const-string v7, "right"

    .line 153
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    const-string v9, "bottom"

    .line 154
    invoke-virtual {v0, v9}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 155
    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-direct {v9, v5, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    iget-object v0, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, v9, v8, v4}, Lcom/mapbox/mapboxsdk/maps/n;->a(Landroid/graphics/RectF;Lcom/mapbox/mapboxsdk/u/a/a;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 157
    :goto_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/geojson/Feature;

    .line 159
    invoke-virtual {v5}, Lcom/mapbox/geojson/Feature;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_11
    const-string v0, "features"

    .line 160
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 162
    :pswitch_1d
    invoke-virtual {v0, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    iget v5, v1, Le/m/b/r;->x:F

    invoke-static {v3, v4, v5}, Le/m/b/i;->a(Ljava/lang/Object;Lcom/mapbox/mapboxsdk/maps/n;F)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object v3

    const-string v4, "duration"

    .line 163
    invoke-virtual {v0, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    new-instance v4, Le/m/b/r$c;

    invoke-direct {v4, v1, v2}, Le/m/b/r$c;-><init>(Le/m/b/r;Lg/a/c/a/k$d;)V

    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    .line 165
    iget-object v2, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, v4}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/camera/a;ILcom/mapbox/mapboxsdk/maps/n$a;)V

    goto/16 :goto_c

    :cond_12
    if-eqz v3, :cond_13

    .line 166
    iget-object v0, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, v3, v4}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    goto/16 :goto_c

    :cond_13
    move-object/from16 v3, v17

    .line 167
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1e
    move-object/from16 v3, v17

    .line 168
    invoke-virtual {v0, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    iget v5, v1, Le/m/b/r;->x:F

    invoke-static {v0, v4, v5}, Le/m/b/i;->a(Ljava/lang/Object;Lcom/mapbox/mapboxsdk/maps/n;F)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 169
    iget-object v3, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    new-instance v4, Le/m/b/r$b;

    invoke-direct {v4, v1, v2}, Le/m/b/r$b;-><init>(Le/m/b/r;Lg/a/c/a/k$d;)V

    invoke-virtual {v3, v0, v4}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/camera/a;Lcom/mapbox/mapboxsdk/maps/n$a;)V

    goto/16 :goto_c

    .line 170
    :cond_14
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 171
    :pswitch_1f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 172
    iget-object v4, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v4

    invoke-virtual {v0, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/mapbox/mapboxsdk/maps/w;->a(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "metersperpixel"

    .line 173
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 175
    :pswitch_20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v4, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v4

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {v0, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->floatValue()F

    move-result v8

    invoke-virtual {v0, v11}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-direct {v7, v8, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v7}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 180
    :pswitch_21
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v4, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v4

    new-instance v7, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v0, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v4, v7}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    .line 182
    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-interface {v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 185
    :pswitch_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    iget-object v3, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/w;->c()Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Double;

    .line 187
    iget-object v4, v3, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->g:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    iget-object v4, v3, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->g:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "sw"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Double;

    .line 188
    iget-object v5, v3, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->f:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v3, v3, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;->f:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "ne"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {v2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_c

    :pswitch_23
    const-string v3, "language"

    .line 190
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    :try_start_0
    iget-object v3, v1, Le/m/b/r;->F:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    invoke-virtual {v3, v0}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Ljava/lang/String;)V

    .line 192
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 194
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MAPBOX LOCALIZATION PLUGIN ERROR"

    invoke-interface {v2, v3, v0, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 195
    :pswitch_24
    :try_start_1
    iget-object v0, v1, Le/m/b/r;->F:Lcom/mapbox/mapboxsdk/plugins/localization/a;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a()V

    .line 196
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MAPBOX LOCALIZATION PLUGIN ERROR"

    invoke-interface {v2, v3, v0, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :pswitch_25
    const-string v3, "mode"

    .line 199
    invoke-virtual {v0, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    invoke-virtual {v1, v0}, Le/m/b/r;->e(I)V

    .line 201
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_c

    .line 202
    :pswitch_26
    invoke-virtual {v0, v7}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Le/m/b/i;->a(Ljava/lang/Object;Le/m/b/t;)V

    .line 203
    invoke-direct/range {p0 .. p0}, Le/m/b/r;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_c

    .line 204
    :pswitch_27
    iget-object v0, v1, Le/m/b/r;->j:Lcom/mapbox/mapboxsdk/maps/n;

    if-eqz v0, :cond_15

    .line 205
    invoke-interface {v2, v8}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    .line 206
    :cond_15
    iput-object v2, v1, Le/m/b/r;->y:Lg/a/c/a/k$d;

    :cond_16
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7db2a718 -> :sswitch_27
        -0x7b4b4569 -> :sswitch_26
        -0x58ac194b -> :sswitch_25
        -0x58791248 -> :sswitch_24
        -0x52ced230 -> :sswitch_23
        -0x51688791 -> :sswitch_22
        -0x4b5fdc7d -> :sswitch_21
        -0x48beb469 -> :sswitch_20
        -0x4861b80d -> :sswitch_1f
        -0x43097424 -> :sswitch_1e
        -0x42ac77c8 -> :sswitch_1d
        -0x424cc992 -> :sswitch_1c
        -0x2d74962b -> :sswitch_1b
        -0x2b8b225f -> :sswitch_1a
        -0x288a1dec -> :sswitch_19
        -0x171e8c7c -> :sswitch_18
        -0x11694c37 -> :sswitch_17
        -0x10cb681d -> :sswitch_16
        -0x101447dd -> :sswitch_15
        -0xc516020 -> :sswitch_14
        0x11956b2f -> :sswitch_13
        0x1d7baf07 -> :sswitch_12
        0x22583919 -> :sswitch_11
        0x22b243d9 -> :sswitch_10
        0x28acf4ec -> :sswitch_f
        0x46c2f792 -> :sswitch_e
        0x48f2f70b -> :sswitch_d
        0x4915575b -> :sswitch_c
        0x4bef2317 -> :sswitch_b
        0x562e7126 -> :sswitch_a
        0x57aaac81 -> :sswitch_9
        0x58e563cc -> :sswitch_8
        0x590a8fc2 -> :sswitch_7
        0x5acb37ac -> :sswitch_6
        0x5b074d13 -> :sswitch_5
        0x5fe0f2a8 -> :sswitch_4
        0x6489b37d -> :sswitch_3
        0x69422e59 -> :sswitch_2
        0x776bde6f -> :sswitch_1
        0x7c6893a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
