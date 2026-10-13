.class public La/g/a/d;
.super La/g/a/b;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(La/g/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/g/a/b;-><init>(La/g/a/c;)V

    return-void
.end method


# virtual methods
.method public a(La/g/a/i;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, La/g/a/b;->a(La/g/a/i;)V

    .line 2
    iget v0, p1, La/g/a/i;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, La/g/a/i;->j:I

    return-void
.end method
