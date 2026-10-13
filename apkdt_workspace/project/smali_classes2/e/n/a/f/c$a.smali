.class public Le/n/a/f/c$a;
.super Ljava/lang/Object;
.source "BatchOperation.java"

# interfaces
.implements Le/n/a/f/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/n/a/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/n/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/f/c$a;->a:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p1, p0, Le/n/a/f/c$a;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/n/a/f/c$a;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/n/a/f/c$a;->d:Ljava/lang/Object;

    return-void
.end method
