.class public Lio/flutter/embedding/engine/g/a$b;
.super Ljava/lang/Object;
.source "FlutterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/flutter/embedding/engine/a;

.field private final c:Lg/a/c/a/c;

.field private final d:Lio/flutter/plugin/platform/h;

.field private final e:Lio/flutter/embedding/engine/g/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Lg/a/c/a/c;Lio/flutter/view/g;Lio/flutter/plugin/platform/h;Lio/flutter/embedding/engine/g/a$a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lg/a/c/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/view/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugin/platform/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/embedding/engine/g/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/g/a$b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/flutter/embedding/engine/g/a$b;->b:Lio/flutter/embedding/engine/a;

    .line 4
    iput-object p3, p0, Lio/flutter/embedding/engine/g/a$b;->c:Lg/a/c/a/c;

    .line 5
    iput-object p5, p0, Lio/flutter/embedding/engine/g/a$b;->d:Lio/flutter/plugin/platform/h;

    .line 6
    iput-object p6, p0, Lio/flutter/embedding/engine/g/a$b;->e:Lio/flutter/embedding/engine/g/a$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/a$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Lg/a/c/a/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/a$b;->c:Lg/a/c/a/c;

    return-object v0
.end method

.method public c()Lio/flutter/embedding/engine/g/a$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/a$b;->e:Lio/flutter/embedding/engine/g/a$a;

    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/a$b;->b:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method public e()Lio/flutter/plugin/platform/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/g/a$b;->d:Lio/flutter/plugin/platform/h;

    return-object v0
.end method
