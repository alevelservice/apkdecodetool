.class public Lcom/facebook/imagepipeline/core/i$c;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/f/c/f/a;Le/f/i/e/c;Le/f/i/e/e;ZZZLcom/facebook/imagepipeline/core/e;Le/f/c/f/h;Le/f/i/c/p;Le/f/i/c/p;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Le/f/i/b/f;IIZI)Lcom/facebook/imagepipeline/core/l;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/c/f/a;",
            "Le/f/i/e/c;",
            "Le/f/i/e/e;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/core/e;",
            "Le/f/c/f/h;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;",
            "Le/f/i/c/e;",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            "Le/f/i/b/f;",
            "IIZI)",
            "Lcom/facebook/imagepipeline/core/l;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    .line 1
    new-instance v20, Lcom/facebook/imagepipeline/core/l;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/facebook/imagepipeline/core/l;-><init>(Landroid/content/Context;Le/f/c/f/a;Le/f/i/e/c;Le/f/i/e/e;ZZZLcom/facebook/imagepipeline/core/e;Le/f/c/f/h;Le/f/i/c/p;Le/f/i/c/p;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Le/f/i/b/f;IIZI)V

    return-object v20
.end method
