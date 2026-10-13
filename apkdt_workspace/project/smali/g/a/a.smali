.class public final Lg/a/a;
.super Ljava/lang/Object;
.source "FlutterInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/a$b;
    }
.end annotation


# static fields
.field private static c:Lg/a/a;


# instance fields
.field private a:Z

.field private b:Lio/flutter/embedding/engine/f/c;


# direct methods
.method private constructor <init>(ZLio/flutter/embedding/engine/f/c;)V
    .locals 0
    .param p2    # Lio/flutter/embedding/engine/f/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lg/a/a;->a:Z

    .line 4
    iput-object p2, p0, Lg/a/a;->b:Lio/flutter/embedding/engine/f/c;

    return-void
.end method

.method synthetic constructor <init>(ZLio/flutter/embedding/engine/f/c;Lg/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/a/a;-><init>(ZLio/flutter/embedding/engine/f/c;)V

    return-void
.end method

.method public static c()Lg/a/a;
    .locals 1

    .line 1
    sget-object v0, Lg/a/a;->c:Lg/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lg/a/a$b;

    invoke-direct {v0}, Lg/a/a$b;-><init>()V

    invoke-virtual {v0}, Lg/a/a$b;->a()Lg/a/a;

    move-result-object v0

    sput-object v0, Lg/a/a;->c:Lg/a/a;

    .line 3
    :cond_0
    sget-object v0, Lg/a/a;->c:Lg/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Lio/flutter/embedding/engine/f/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/a;->b:Lio/flutter/embedding/engine/f/c;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/a/a;->a:Z

    return v0
.end method
