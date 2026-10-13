.class public Lio/flutter/view/h;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"


# static fields
.field private static c:Lio/flutter/view/h;


# instance fields
.field private final a:Landroid/view/WindowManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/flutter/embedding/engine/FlutterJNI$b;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .locals 1
    .param p1    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/view/h$a;

    invoke-direct {v0, p0}, Lio/flutter/view/h$a;-><init>(Lio/flutter/view/h;)V

    iput-object v0, p0, Lio/flutter/view/h;->b:Lio/flutter/embedding/engine/FlutterJNI$b;

    .line 3
    iput-object p1, p0, Lio/flutter/view/h;->a:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lio/flutter/view/h;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/h;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static a(Landroid/view/WindowManager;)Lio/flutter/view/h;
    .locals 1
    .param p0    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget-object v0, Lio/flutter/view/h;->c:Lio/flutter/view/h;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/flutter/view/h;

    invoke-direct {v0, p0}, Lio/flutter/view/h;-><init>(Landroid/view/WindowManager;)V

    sput-object v0, Lio/flutter/view/h;->c:Lio/flutter/view/h;

    .line 4
    :cond_0
    sget-object p0, Lio/flutter/view/h;->c:Lio/flutter/view/h;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lio/flutter/view/h;->b:Lio/flutter/embedding/engine/FlutterJNI$b;

    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterJNI;->setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$b;)V

    .line 6
    iget-object v0, p0, Lio/flutter/view/h;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 7
    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    return-void
.end method
