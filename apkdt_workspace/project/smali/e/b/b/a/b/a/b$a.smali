.class public Le/b/b/a/b/a/b$a;
.super Ljava/lang/Object;
.source "IConfigProvider.java"

# interfaces
.implements Le/b/b/a/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/b/a/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    const-string v0, "MockProvider"

    const-string v1, "**WARNING** ConfigProxy configProvider is mocked! you need invoke ConfigProxy.getInstance().setConfigProvider(...) before use it!"

    .line 3
    invoke-static {v0, v1}, Le/b/b/a/b/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Le/b/b/a/b/a/b$a;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Le/b/b/a/b/a/c;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le/b/b/a/b/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Le/b/b/a/b/a/b$a;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Le/b/b/a/b/a/b$a;->a()V

    const/4 p1, 0x0

    return-object p1
.end method
