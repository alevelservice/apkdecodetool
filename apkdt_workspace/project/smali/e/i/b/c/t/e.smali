.class public Le/i/b/c/t/e;
.super Ljava/lang/Object;
.source "ShapePathModel.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# static fields
.field private static final i:Le/i/b/c/t/a;

.field private static final j:Le/i/b/c/t/b;


# instance fields
.field private a:Le/i/b/c/t/a;

.field private b:Le/i/b/c/t/a;

.field private c:Le/i/b/c/t/a;

.field private d:Le/i/b/c/t/a;

.field private e:Le/i/b/c/t/b;

.field private f:Le/i/b/c/t/b;

.field private g:Le/i/b/c/t/b;

.field private h:Le/i/b/c/t/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/i/b/c/t/a;

    invoke-direct {v0}, Le/i/b/c/t/a;-><init>()V

    sput-object v0, Le/i/b/c/t/e;->i:Le/i/b/c/t/a;

    .line 2
    new-instance v0, Le/i/b/c/t/b;

    invoke-direct {v0}, Le/i/b/c/t/b;-><init>()V

    sput-object v0, Le/i/b/c/t/e;->j:Le/i/b/c/t/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/i/b/c/t/e;->i:Le/i/b/c/t/a;

    iput-object v0, p0, Le/i/b/c/t/e;->a:Le/i/b/c/t/a;

    .line 3
    iput-object v0, p0, Le/i/b/c/t/e;->b:Le/i/b/c/t/a;

    .line 4
    iput-object v0, p0, Le/i/b/c/t/e;->c:Le/i/b/c/t/a;

    .line 5
    iput-object v0, p0, Le/i/b/c/t/e;->d:Le/i/b/c/t/a;

    .line 6
    sget-object v0, Le/i/b/c/t/e;->j:Le/i/b/c/t/b;

    iput-object v0, p0, Le/i/b/c/t/e;->e:Le/i/b/c/t/b;

    .line 7
    iput-object v0, p0, Le/i/b/c/t/e;->f:Le/i/b/c/t/b;

    .line 8
    iput-object v0, p0, Le/i/b/c/t/e;->g:Le/i/b/c/t/b;

    .line 9
    iput-object v0, p0, Le/i/b/c/t/e;->h:Le/i/b/c/t/b;

    return-void
.end method


# virtual methods
.method public a()Le/i/b/c/t/b;
    .locals 1

    .line 2
    iget-object v0, p0, Le/i/b/c/t/e;->g:Le/i/b/c/t/b;

    return-object v0
.end method

.method public a(Le/i/b/c/t/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/c/t/e;->e:Le/i/b/c/t/b;

    return-void
.end method

.method public b()Le/i/b/c/t/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->d:Le/i/b/c/t/a;

    return-object v0
.end method

.method public c()Le/i/b/c/t/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->c:Le/i/b/c/t/a;

    return-object v0
.end method

.method public d()Le/i/b/c/t/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->h:Le/i/b/c/t/b;

    return-object v0
.end method

.method public e()Le/i/b/c/t/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->f:Le/i/b/c/t/b;

    return-object v0
.end method

.method public f()Le/i/b/c/t/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->e:Le/i/b/c/t/b;

    return-object v0
.end method

.method public g()Le/i/b/c/t/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->a:Le/i/b/c/t/a;

    return-object v0
.end method

.method public h()Le/i/b/c/t/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/c/t/e;->b:Le/i/b/c/t/a;

    return-object v0
.end method
