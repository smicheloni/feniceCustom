-- For jasper report Print OdC

-- View: print_c_orderline_purchase

-- DROP VIEW print_c_orderline_purchase;

CREATE OR REPLACE VIEW print_c_orderline_purchase AS 
 SELECT ol.ad_client_id,
    ol.ad_org_id,
    uom.ad_language,
    ol.c_order_id,
    ol.c_orderline_id,
    ol.c_tax_id,
    t.taxindicator,
    ol.line,
    p.m_product_id,
    po.vendorproductno,
        CASE
            WHEN ol.qtyordered <> 0::numeric OR ol.m_product_id IS NOT NULL THEN ol.qtyordered
            ELSE NULL::numeric
        END AS qtyordered,
        CASE
            WHEN ol.qtyentered <> 0::numeric OR ol.m_product_id IS NOT NULL THEN ol.qtyentered
            ELSE NULL::numeric
        END AS qtyentered,
        CASE
            WHEN ol.qtyentered <> 0::numeric OR ol.m_product_id IS NOT NULL THEN uom.uomsymbol
            ELSE NULL::character varying
        END AS uomsymbol,
    COALESCE(c.name, COALESCE(pt.name, p.name), ol.description) AS name,
    ol.description,
    i.description AS notasenca,
    COALESCE(pt.documentnote, p.documentnote) AS documentnote,
    p.upc,
    p.sku,
    COALESCE(pp.vendorproductno, p.value, ''::character varying) AS productvalue,
    ol.pricelist,
    ol.priceactual,
    ol.priceentered,
        CASE
            WHEN pl.istaxincluded = 'N'::bpchar THEN ol.linenetamt
            ELSE ol.linenetamt / (1::numeric + tt.rate / 100::numeric)
        END AS linenetamt,
        CASE
            WHEN i.isdiscountprinted = 'Y'::bpchar AND ol.pricelist <> 0::numeric AND ol.qtyentered <> 0::numeric THEN ol.pricelist * ol.qtyordered / ol.qtyentered
            ELSE NULL::numeric
        END AS priceenteredlist,
    pt.description AS productdescription,
    p.imageurl,
    ol.pricelist * ol.qtyentered AS broker1price,
    ol.discount,
    tt.rate / 100::numeric AS rate,
        CASE
            WHEN pl.istaxincluded = 'N'::bpchar THEN ol.linenetamt * (tt.rate / 100::numeric)
            ELSE ol.linenetamt - ol.linenetamt / (1::numeric + tt.rate / 100::numeric)
        END AS taxamt,
    ol.c_project_id,
    cu.iso_code,
    cu.cursymbol,
        CASE
            WHEN ol.c_charge_id IS NOT NULL THEN 'Altri costi'::text
            WHEN ol.m_product_id IS NOT NULL THEN 'Produtti'::text
            ELSE ''::text
        END AS grupo,
    pl.istaxincluded,
    ol.c_projectphase_id,
    ol.c_projecttask_id
   FROM c_orderline ol
     JOIN c_uom_trl uom ON ol.c_uom_id = uom.c_uom_id AND uom.ad_language::text = 'it_IT'::text
     JOIN c_order i ON ol.c_order_id = i.c_order_id
     JOIN m_pricelist pl ON i.m_pricelist_id = pl.m_pricelist_id
     LEFT JOIN m_product p ON ol.m_product_id = p.m_product_id
     LEFT JOIN m_product_po po ON p.m_product_id = po.m_product_id AND i.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_product_trl pt ON ol.m_product_id = pt.m_product_id AND uom.ad_language::text = pt.ad_language::text
     LEFT JOIN c_charge_trl c ON ol.c_charge_id = c.c_charge_id AND uom.ad_language::text = c.ad_language::text
     LEFT JOIN m_product_po pp ON ol.m_product_id = pp.m_product_id AND i.c_bpartner_id = pp.c_bpartner_id
     LEFT JOIN c_tax_trl t ON ol.c_tax_id = t.c_tax_id AND uom.ad_language::text = t.ad_language::text
     LEFT JOIN c_tax tt ON ol.c_tax_id = tt.c_tax_id
     LEFT JOIN c_currency cu ON i.c_currency_id = cu.c_currency_id;

ALTER TABLE print_c_orderline_purchase
  OWNER TO adempiere;
