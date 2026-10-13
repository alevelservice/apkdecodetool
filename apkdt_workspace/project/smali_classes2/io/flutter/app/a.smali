.class public final Lio/flutter/app/a;
.super Ljava/lang/Object;
.source "FlutterActivityDelegate.java"

# interfaces
.implements Lio/flutter/app/b;
.implements Lio/flutter/view/FlutterView$e;
.implements Lg/a/c/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/a$b;
    }
.end annotation


# static fields
.field private static final i:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field private final e:Landroid/app/Activity;

.field private final f:Lio/flutter/app/a$b;

.field private g:Lio/flutter/view/FlutterView;

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    sput-object v0, Lio/flutter/app/a;->i:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/app/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lg/a/d/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    .line 3
    invoke-static {p2}, Lg/a/d/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/flutter/app/a$b;

    iput-object p2, p0, Lio/flutter/app/a;->f:Lio/flutter/app/a$b;

    return-void
.end method

.method static synthetic a(Lio/flutter/app/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/a;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lio/flutter/app/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/flutter/app/a;->h:Landroid/view/View;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 46
    iget-object v0, p0, Lio/flutter/app/a;->h:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    sget-object v2, Lio/flutter/app/a;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    new-instance v1, Lio/flutter/app/a$a;

    invoke-direct {v1, p0}, Lio/flutter/app/a$a;-><init>(Lio/flutter/app/a;)V

    invoke-virtual {v0, v1}, Lio/flutter/view/FlutterView;->addFirstFrameListener(Lio/flutter/view/FlutterView$d;)V

    .line 49
    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    const v1, 0x1030009

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getFlutterNativeView()Lio/flutter/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/view/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lio/flutter/view/f;

    invoke-direct {v0}, Lio/flutter/view/f;-><init>()V

    .line 43
    iput-object p1, v0, Lio/flutter/view/f;->a:Ljava/lang/String;

    const-string p1, "main"

    .line 44
    iput-object p1, v0, Lio/flutter/view/f;->b:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {p1, v0}, Lio/flutter/view/FlutterView;->runFromBundle(Lio/flutter/view/f;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 7

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "trace-startup"

    .line 4
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "--trace-startup"

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "start-paused"

    .line 6
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "--start-paused"

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "disable-service-auth-codes"

    .line 8
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "--disable-service-auth-codes"

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "use-test-fonts"

    .line 10
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "--use-test-fonts"

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "enable-dart-profiling"

    .line 12
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "--enable-dart-profiling"

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "enable-software-rendering"

    .line 14
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "--enable-software-rendering"

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "skia-deterministic-rendering"

    .line 16
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "--skia-deterministic-rendering"

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v3, "trace-skia"

    .line 18
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "--trace-skia"

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v3, "trace-systrace"

    .line 20
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "--trace-systrace"

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v3, "dump-skp-on-shader-compilation"

    .line 22
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "--dump-skp-on-shader-compilation"

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v3, "cache-sksl"

    .line 24
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "--cache-sksl"

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v3, "purge-persistent-cache"

    .line 26
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "--purge-persistent-cache"

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v3, "verbose-logging"

    .line 28
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "--verbose-logging"

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v3, "observatory-port"

    .line 30
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_d

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--observatory-port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_d
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v2, "endless-trace-buffer"

    .line 34
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "--endless-trace-buffer"

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string v1, "dart-flags"

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--dart-flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_11

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()Landroid/view/View;
    .locals 3

    .line 9
    invoke-direct {p0}, Lio/flutter/app/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lio/flutter/app/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 11
    :cond_1
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v2, Lio/flutter/app/a;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method static synthetic b(Lio/flutter/app/a;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "route"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lio/flutter/view/d;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v1, v0}, Lio/flutter/view/FlutterView;->setInitialRoute(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lio/flutter/app/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method private d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    .line 3
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x81

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 5
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.app.android.SplashScreenUntilFirstFrame"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFlutterView()Lio/flutter/view/FlutterView;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    return-object v0
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/c;->hasPlugin(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/app/c;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->popRoute()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/app/a;->a(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/view/d;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lio/flutter/app/a;->f:Lio/flutter/app/a$b;

    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lio/flutter/app/a$b;->createFlutterView(Landroid/content/Context;)Lio/flutter/view/FlutterView;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    .line 9
    iget-object p1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lio/flutter/app/a;->f:Lio/flutter/app/a$b;

    invoke-interface {p1}, Lio/flutter/app/a$b;->createFlutterNativeView()Lio/flutter/view/e;

    move-result-object p1

    .line 11
    new-instance v0, Lio/flutter/view/FlutterView;

    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/e;)V

    iput-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    .line 12
    iget-object p1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    sget-object v0, Lio/flutter/app/a;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-direct {p0}, Lio/flutter/app/a;->b()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/app/a;->h:Landroid/view/View;

    .line 15
    iget-object p1, p0, Lio/flutter/app/a;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 16
    invoke-direct {p0}, Lio/flutter/app/a;->a()V

    .line 17
    :cond_1
    iget-object p1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/app/a;->b(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 18
    :cond_2
    invoke-static {}, Lio/flutter/view/d;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-direct {p0, p1}, Lio/flutter/app/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 2
    instance-of v1, v0, Lio/flutter/app/FlutterApplication;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/flutter/app/FlutterApplication;

    .line 4
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/flutter/app/FlutterApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterApplication;->setCurrentActivity(Landroid/app/Activity;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v1}, Lio/flutter/view/FlutterView;->getFlutterNativeView()Lio/flutter/view/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/app/c;->a(Lio/flutter/view/e;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lio/flutter/app/a;->f:Lio/flutter/app/a$b;

    invoke-interface {v0}, Lio/flutter/app/a$b;->retainFlutterNativeView()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->destroy()V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->detach()Lio/flutter/view/e;

    :cond_3
    :goto_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onMemoryPressure()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/app/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/flutter/app/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/c;->onNewIntent(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 2
    instance-of v1, v0, Lio/flutter/app/FlutterApplication;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/flutter/app/FlutterApplication;

    .line 4
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/flutter/app/FlutterApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterApplication;->setCurrentActivity(Landroid/app/Activity;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onPause()V

    :cond_1
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onPostResume()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/app/c;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 2
    instance-of v1, v0, Lio/flutter/app/FlutterApplication;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/flutter/app/FlutterApplication;

    .line 4
    iget-object v1, p0, Lio/flutter/app/a;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/flutter/app/FlutterApplication;->setCurrentActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->onMemoryPressure()V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/app/c;->onUserLeaveHint()V

    return-void
.end method

.method public registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/c;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object p1

    return-object p1
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/app/a;->g:Lio/flutter/view/FlutterView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/app/c;->valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
