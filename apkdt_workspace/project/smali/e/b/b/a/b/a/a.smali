.class public Le/b/b/a/b/a/a;
.super Ljava/lang/Object;
.source "ConfigProxy.java"

# interfaces
.implements Le/b/b/a/b/a/b;


# static fields
.field private static final b:Le/b/b/a/b/a/a;


# instance fields
.field private a:Le/b/b/a/b/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/b/a/a;

    invoke-direct {v0}, Le/b/b/a/b/a/a;-><init>()V

    sput-object v0, Le/b/b/a/b/a/a;->b:Le/b/b/a/b/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/b/b/a/b/a/b$a;

    invoke-direct {v0}, Le/b/b/a/b/a/b$a;-><init>()V

    iput-object v0, p0, Le/b/b/a/b/a/a;->a:Le/b/b/a/b/a/b;

    return-void
.end method

.method public static a()Le/b/b/a/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/b/a/a;->b:Le/b/b/a/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Le/b/b/a/b/a/a;->a:Le/b/b/a/b/a/b;

    invoke-interface {v0, p1}, Le/b/b/a/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Le/b/b/a/b/a/c;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le/b/b/a/b/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Le/b/b/a/b/a/a;->a:Le/b/b/a/b/a/b;

    invoke-interface {v0, p1, p2}, Le/b/b/a/b/a/b;->a(Ljava/lang/String;Le/b/b/a/b/a/c;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/b/a/b/a/a;->a:Le/b/b/a/b/a/b;

    invoke-interface {v0, p1}, Le/b/b/a/b/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
